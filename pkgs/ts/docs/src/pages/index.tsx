import * as React from "react";
import * as data from "../../../../../generated/docs.json";

const IndexPage = () => {
  return (
    <main>
      <title>Home Page</title>
      <pre>{JSON.stringify(data, null, 2)}</pre>
    </main>
  );
};

export default IndexPage;
