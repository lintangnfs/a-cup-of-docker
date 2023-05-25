import { OrgType } from "@/interfaces/organizations.interface";
import { useGetOrganizations } from "@/hooks/organizations.hooks";

export default function Home() {

  const { isLoading, data } = useGetOrganizations();

  console.log('data', data)

  if(isLoading){

    return (
      <main
        className={`flex min-h-screen flex-col items-center justify-between p-24`}
      >
        <div className="z-10 w-full max-w-5xl items-center justify-between font-mono text-sm lg:flex">
          <p className="fixed left-0 top-0 flex w-full justify-center border-b border-gray-300 bg-gradient-to-b from-zinc-200 pb-6 pt-8 backdrop-blur-2xl dark:border-neutral-800 dark:bg-zinc-800/30 dark:from-inherit lg:static lg:w-auto  lg:rounded-xl lg:border lg:bg-gray-200 lg:p-4 lg:dark:bg-zinc-800/30">
            Loading...
          </p>
        </div>
      </main>
    )

  }

  return (
    <main
      className={`flex min-h-screen flex-col items-center justify-between p-24`}
    >
      <div className="z-10 w-full max-w-5xl items-center justify-between font-mono text-sm lg:flex">
        <p className="fixed left-0 top-0 flex w-full justify-center border-b border-gray-300 bg-gradient-to-b from-zinc-200 pb-6 pt-8 pl-8 pr-8 backdrop-blur-2xl dark:border-neutral-800 dark:bg-zinc-800/30 dark:from-inherit lg:static lg:w-auto  lg:rounded-xl lg:border lg:bg-gray-200 lg:p-4 lg:dark:bg-zinc-800/30">
          {
            `Kingdom Animalia berdasarkan tulang belakang dibagi menjadi dua yaitu : ${data?.data?.map((item : OrgType) => item.name).join(", ")}`
          }
        </p>
      </div>
    </main>
  )
}
