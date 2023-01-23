<?php
/*
 *  -- BEGIN LICENSE BLOCK ----------------------------------
 *
 *  This file is part of GalleryInsert, a plugin for DotClear2.
 *
 *  Licensed under the GPL version 2.0 license.
 *  See LICENSE file or
 *  http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
 *
 *  -- END LICENSE BLOCK ------------------------------------
 */

if (!isset(dcCore::app()->resources['help']['galleryinserthelp'])) {
    dcCore::app()->resources['help']['galleryinserthelp'] = __DIR__ . '/galleryinserthelp.html';
}
