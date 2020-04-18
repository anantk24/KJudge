package com.sschakraborty.platform.kjudge.error.errorCode;

public enum JudgeErrorCode implements ErrorCode {
	UNSUPPORTED_LANGUAGE("Unsupported Language!"),
	IO_ERROR_IN_COMMAND_EXEC("IO error while executing command!"),
	IO_ERROR_IN_PROCESS_EXEC("IO error while executing process!"),
	JUDGE_ENVIRONMENT_NOT_READY("Environment not ready or missing!"),
	JUDGE_ENTRY_LIST_ERROR("Judge entry list resource error!"),
	MALFORMED_JUDGE_CLASS("Judge class not defined according to specified rules!");

	private final String message;

	JudgeErrorCode(String message) {
		this.message = message;
	}

	@Override
	public String getMessage() {
		return this.message;
	}
}