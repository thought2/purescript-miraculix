import * as React from "react";
import * as data_ from "../../../../../generated/docs.json";
import { NixDocs, NixDefDoc } from "../../../../../generated/types";

const data = data_ as unknown as NixDocs;

const Def = ({ def }: { def: NixDefDoc }) => <div>{def.name}</div>;

type T1<A> = {
  __field0: A;
  __tag: string;
};

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
