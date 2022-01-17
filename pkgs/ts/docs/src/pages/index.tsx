import * as React from "react";
import * as data_ from "../../../../../generated/docs.json";
import { Docs } from "../../../../../generated/types";

const data = data_ as unknown as Docs;

const Def = ({ def }: { def: any }) => <div>Def</div>;

const IndexPage = () => {
  return (
    <main>
      <title>Home Page</title>
      <h1>{data.title}</h1>
      <h2>Types</h2>
      <h2>Defs</h2>

      <>
        {data.defs.map((def) => (
          <Def def={def} />
        ))}
      </>

      <pre>{JSON.stringify(data, null, 2)}</pre>
    </main>
  );
};

export default IndexPage;
