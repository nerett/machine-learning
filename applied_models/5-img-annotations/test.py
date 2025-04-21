import fiftyone as fo
import fiftyone.zoo as foz

# Force redownload by deleting the dataset if it exists
try:
    dataset = fo.load_dataset("coco-captions")
    dataset.delete()
except fo.core.dataset.DatasetNotFoundError:
    print('not found')
    pass # Dataset does not exist, so continue.

dataset = foz.load_zoo_dataset(
    "coco-captions",
    split="train",  # or "validation" or "test"
    label_types=["captions"],
    dataset_dir="./coco-captions", # Where to save the dataset.
)

session = fo.launch_app(dataset)
