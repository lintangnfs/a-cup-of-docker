export const ErrorCodes = {
  403: {
    code: 403,
    message: "Not Allowed",
  },
  401: {
    code: 401,
    message: "You're unauthorized",
  }
};

// you need to define key for react-query hooks
export enum QueryKey {
  ORGANIZATIONS = "organizations"
}

export type TModes = "list" | "create" | "edit"

