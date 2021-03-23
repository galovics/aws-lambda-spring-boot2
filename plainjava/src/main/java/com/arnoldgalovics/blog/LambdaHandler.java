package com.arnoldgalovics.blog;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import com.google.gson.Gson;

import java.util.HashMap;
import java.util.Map;

public class LambdaHandler implements RequestHandler<Map<String, Object>, ApiGatewayProxyResponse> {
    private static Gson gson = new Gson();

    private Map<Integer, Book> bookMap = new HashMap<>();

    public LambdaHandler() {
        bookMap.put(1, new Book(1, "Effective Java"));
        bookMap.put(2, new Book(2, "Running Spring in Serverless"));
    }

    @Override
    public ApiGatewayProxyResponse handleRequest(Map<String, Object> input, Context context) {
        return new ApiGatewayProxyResponse(200, null, gson.toJson(bookMap.values()));
    }
}
