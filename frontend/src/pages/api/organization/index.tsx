/* eslint-disable import/no-anonymous-default-export */
import excuteQuery from "@/lib/db";
import type { NextApiRequest, NextApiResponse } from 'next'

export default async (req: NextApiRequest, res: NextApiResponse) => {

 	try {

  	const result: any = await excuteQuery({

    	query: "SELECT * FROM mst_organization"

  	});

		if(result && result.length > 0){

			res.status(200).json({ data: result });

		}

		res.status(500).json({ data: [] });
		

	} catch ( error ) {

		res.status(500).json({ data: null });

	}

};