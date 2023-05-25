import { QueryKey } from "@/helpers/constants";
import { useQuery } from "@tanstack/react-query";
import axios from "axios";

const URL = `${process.env.NEXT_PUBLIC_ROOT_DOMAIN}/api/organization`;

export const useGetOrganizations = () => useQuery({
  queryKey: [QueryKey.ORGANIZATIONS],
  queryFn: () =>
    axios
      .get(URL)
      .then((res) => res.data)
});



