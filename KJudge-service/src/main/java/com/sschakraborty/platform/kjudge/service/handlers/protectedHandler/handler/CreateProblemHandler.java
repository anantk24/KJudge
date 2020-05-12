package com.sschakraborty.platform.kjudge.service.handlers.protectedHandler.handler;

import com.sschakraborty.platform.kjudge.data.GenericDAO;
import com.sschakraborty.platform.kjudge.error.logger.LoggingUtility;
import com.sschakraborty.platform.kjudge.service.handlers.AbstractRouteHandler;
import com.sschakraborty.platform.kjudge.shared.model.*;
import io.vertx.core.json.JsonArray;
import io.vertx.core.json.JsonObject;
import io.vertx.ext.web.RoutingContext;
import io.vertx.ext.web.common.template.TemplateEngine;

import java.util.Arrays;
import java.util.HashMap;

public class CreateProblemHandler extends AbstractRouteHandler {
	public CreateProblemHandler(GenericDAO genericDAO, TemplateEngine templateEngine) {
		super(genericDAO, templateEngine);
	}

	@Override
	public String[] getRouteURLArray() {
		return new String[]{
			"/createProblem",
			"/createProblem/"
		};
	}

	@Override
	public void doGet(RoutingContext routingContext) {
		try {
			final JsonObject data = new JsonObject();
			final JsonArray languages = new JsonArray();
			for (Language language : Language.values()) {
				languages.add(language.toString());
			}
			data.put("languages", languages);
			renderByType(
				data,
				"template/Problem/ManageProblem",
				routingContext
			);
		} catch (Exception e) {
			LoggingUtility.logger().error(e);
			routingContext.fail(500);
		}
	}

	@Override
	public void doPost(RoutingContext routingContext) {
		final JsonObject model = extractModel(routingContext);
		if (model != null) {
			try {
				final JsonObject creationData = model.getJsonObject("creationData");

				Problem problem = getGenericDAO().fetchFull(Problem.class, creationData.getString("problemHandle"));
				if (problem == null) {
					problem = new Problem();
				}

				problem.setProblemHandle(creationData.getString("problemHandle"));
				problem.setCodingEvent(getGenericDAO().fetchFull(CodingEvent.class, creationData.getString("codingEventHandle")));
				problem.setName(creationData.getString("name"));
				problem.setDescription(creationData.getString("description"));
				problem.setTestcases(Arrays.asList());
				problem.setSolutions(Arrays.asList());

				for (Object object : creationData.getJsonArray("testcases")) {
					final JsonObject testcaseObject = (JsonObject) object;
					final Testcase testcase = testcaseObject.mapTo(Testcase.class);
					problem.getTestcases().add(testcase);
				}

				for (Object object : creationData.getJsonArray("solutions")) {
					final JsonObject solutionObject = (JsonObject) object;
					final CodeSubmission codeSubmission = solutionObject.mapTo(CodeSubmission.class);
					problem.getSolutions().add(codeSubmission);
				}

				final HashMap ioConstraints = creationData.getJsonObject("ioConstraints").mapTo(HashMap.class);
				final IOConstraint ioConstraint = new IOConstraint();
				ioConstraint.setOutputLimits(ioConstraints);
				problem.setIoConstraint(ioConstraint);

				final HashMap memoryConstraints = creationData.getJsonObject("memoryConstraints").mapTo(HashMap.class);
				final MemoryConstraint memoryConstraint = new MemoryConstraint();
				memoryConstraint.setMemoryConstraints(memoryConstraints);
				problem.setMemoryConstraint(memoryConstraint);

				final HashMap timeConstraints = creationData.getJsonObject("timeConstraints").mapTo(HashMap.class);
				final TimeConstraint timeConstraint = new TimeConstraint();
				timeConstraint.setTimeConstraints(timeConstraints);
				problem.setTimeConstraint(timeConstraint);

				getGenericDAO().saveOrUpdate(problem);
			} catch (Exception e) {
				LoggingUtility.logger().error(e);
				routingContext.fail(404);
			}
		} else {
			routingContext.fail(400);
		}
	}
}