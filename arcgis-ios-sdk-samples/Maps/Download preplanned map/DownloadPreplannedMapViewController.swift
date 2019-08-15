//
// Copyright © 2019 Esri.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import UIKit
import ArcGIS

// MARK: - Constants

private enum Constants {
    static let activityIndicatorColor = UIColor.primaryBlue
}

// MARK: - DownloadPreplannedMapViewController

class DownloadPreplannedMapViewController: UIViewController {
    @IBOutlet private weak var mapView: AGSMapView!
    @IBOutlet private weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet private weak var selectMapBarButtonItem: UIBarButtonItem!
    @IBOutlet private weak var removeDownloadsBarButtonItem: UIBarButtonItem!

    // MARK: UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationBar()
        setupToolbar()
    }

    // MARK: IBActions

    @IBAction private func selectMapTapped(_ sender: UIBarButtonItem) {}

    @IBAction private func removeDownloadsTapped(_ sender: UIBarButtonItem) {}

    // MARK: Private behavior

    private func setupNavigationBar() {
        guard let sourceBarButtonItem = navigationItem.rightBarButtonItem as? SourceCodeBarButtonItem else {
            return
        }

        sourceBarButtonItem.filenames = ["DownloadPreplannedMapViewController"]
    }

    private func setupToolbar() {
        activityIndicatorView.color = Constants.activityIndicatorColor
    }
}
