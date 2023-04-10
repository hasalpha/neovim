# neovim
Neovim config for all my Macbooks/linux PCs. no __WINDOWS__ as windows sucks for development.

All my most used shortcuts, plugins, theme and quirks.

import { Form } from "formsy-semantic-ui-react";
import React from "react";
import { Button, Dropdown, Grid } from "semantic-ui-react";

const options = [
	{ key: 1, text: 'Choice 1', value: 1 },
	{ key: 2, text: 'Choice 2', value: 2 },
	{ key: 3, text: 'Choice 3', value: 3 },
]

export function TerrainEa() {
	const [panFile, setPanFile] = React.useState(null);

	const handleFileChange = (event) => {
		const [file] = event.target.files;
		if (file?.name?.toLowerCase?.()?.endsWith?.('pan')) return setPanFile(file);
		window.appReference.notify(panFile.name);
	};

	const onFormSubmit = () => {
		window.appReference.notify(panFile.name, true);
	}

	return (
		<>
			<Dropdown
				placeholder="Select a PAN file"
				clearable
				selection
				fluid
				options={options}
				className="mb-4"
			/>
			<Form onSubmit={onFormSubmit}>
				<Form.Field>
					<Button as="label" htmlFor="file" type="button" positive style={{ maxHeight: '100px' }}>
						{`${!panFile ? 'Select PAN file' : panFile?.name}`}
					</Button>
					<input type="file" id="file" hidden onChange={handleFileChange} accept=".pan" />
				</Form.Field>
				<Grid columns={2} stretched>
					<Grid.Row stretched>
						<Grid.Column stretched>
							<Button type="submit" className='sec-btn m-0'>Upload</Button>
						</Grid.Column>
						<Grid.Column stretched>
							<Button type="button" className='del-btn m-0'>Reset</Button>
						</Grid.Column>
					</Grid.Row>
				</Grid>
			</Form>
		</>
	);
};

const MemoTerrainEa = React.memo(TerrainEa);
export default MemoTerrainEa;
