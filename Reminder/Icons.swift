//
//  Icons.swift
//  Reminder
//
//  Created by Ben Koska on 1/22/17.
//  Copyright © 2017 TheTechKids. All rights reserved.
//

import UIKit

class icons{
    
    static let back = UIImage(named: "cm_arrow_back_white")?.withRenderingMode(.alwaysTemplate)
    static let down = UIImage(named: "cm_arrow_downward_white")?.withRenderingMode(.alwaysTemplate)
    static let audio_libary = UIImage(named: "cm_audio_library_white")?.withRenderingMode(.alwaysTemplate)
    static let audio = UIImage(named: "cm_audio_white")?.withRenderingMode(.alwaysTemplate)
    static let bell = UIImage(named: "cm_bell_white")?.withRenderingMode(.alwaysTemplate)
    static let notification = UIImage(named: "cm_bell_white")?.withRenderingMode(.alwaysTemplate)
    static let check = UIImage(named: "cm_check_white")?.withRenderingMode(.alwaysTemplate)
    static let close = UIImage(named: "cm_close_white")?.withRenderingMode(.alwaysTemplate)
    static let image = UIImage(named: "cm_image_white")?.withRenderingMode(.alwaysTemplate)
    static let menu = UIImage(named: "cm_menu_white")?.withRenderingMode(.alwaysTemplate)
    static let mic = UIImage(named: "cm_microphone_white")?.withRenderingMode(.alwaysTemplate)
    static let dott_3 = UIImage(named: "cm_more_horiz_white")?.withRenderingMode(.alwaysTemplate)
    static let dott_3_up = UIImage(named: "cm_more_vert_white")?.withRenderingMode(.alwaysTemplate)
    static let movie = UIImage(named: "cm_movie_white")?.withRenderingMode(.alwaysTemplate)
    static let pause = UIImage(named: "cm_pause_white")?.withRenderingMode(.alwaysTemplate)
    static let edit = UIImage(named: "cm_pen_white")?.withRenderingMode(.alwaysTemplate)
    static let camera = UIImage(named: "cm_photo_camera_white")?.withRenderingMode(.alwaysTemplate)
    static let photo_libary = UIImage(named: "cm_photo_library_white")?.withRenderingMode(.alwaysTemplate)
    static let play = UIImage(named: "cm_play_white")?.withRenderingMode(.alwaysTemplate)
    static let search = UIImage(named: "cm_search_white")?.withRenderingMode(.alwaysTemplate)
    static let settings = UIImage(named: "cm_settings_white")?.withRenderingMode(.alwaysTemplate)
    static let share = UIImage(named: "cm_share_white")?.withRenderingMode(.alwaysTemplate)
    static let random = UIImage(named: "cm_shuffle_white")?.withRenderingMode(.alwaysTemplate)
    static let skip_back = UIImage(named: "cm_skip_backward_white")?.withRenderingMode(.alwaysTemplate)
    static let skip_forward = UIImage(named: "cm_skip_forward_white")?.withRenderingMode(.alwaysTemplate)
    static let star = UIImage(named: "cm_star_white")?.withRenderingMode(.alwaysTemplate)
    static let vid_cam = UIImage(named: "cm_videocam_white")?.withRenderingMode(.alwaysTemplate)
    static let volume_high = UIImage(named: "cm_volume_high_white")?.withRenderingMode(.alwaysTemplate)
    static let volume_med = UIImage(named: "cm_volume_medium_white")?.withRenderingMode(.alwaysTemplate)
    static let volume_no = UIImage(named: "cm_volume_off_white")?.withRenderingMode(.alwaysTemplate)
    static let add_circle_outlined = UIImage(named: "ic_add_circle_outline_white")?.withRenderingMode(.alwaysTemplate)
    static let add_circle = UIImage(named: "ic_add_circle_white")?.withRenderingMode(.alwaysTemplate)
    static let add = UIImage(named: "ic_add_white")?.withRenderingMode(.alwaysTemplate)
    static let arrow_back = UIImage(named: "ic_arrow_back_white")?.withRenderingMode(.alwaysTemplate)
    static let arrow_down = UIImage(named: "ic_arrow_downward_white")?.withRenderingMode(.alwaysTemplate)
    static let audiotrack = UIImage(named: "ic_audiotrack_white")?.withRenderingMode(.alwaysTemplate)
    static let block = UIImage(named: "ic_block")?.withRenderingMode(.alwaysTemplate)
    static let cam_front = UIImage(named: "ic_camera_front_white")?.withRenderingMode(.alwaysTemplate)
    static let cam_rear = UIImage(named: "ic_camera_rear_white")?.withRenderingMode(.alwaysTemplate)
    static let fav_outline = UIImage(named: "ic_favorite_border_white")?.withRenderingMode(.alwaysTemplate)
    static let email = UIImage(named: "ic_email_white")?.withRenderingMode(.alwaysTemplate)
    static let fav = UIImage(named: "ic_favorite_white")?.withRenderingMode(.alwaysTemplate)
    static let flash_auto = UIImage(named: "ic_flash_auto_white")?.withRenderingMode(.alwaysTemplate)
    static let flash_off = UIImage(named: "ic_flash_off_white")?.withRenderingMode(.alwaysTemplate)
    static let flash_on = UIImage(named: "ic_flash_on_white")?.withRenderingMode(.alwaysTemplate)
    static let history = UIImage(named: "ic_history_white")?.withRenderingMode(.alwaysTemplate)
    static let home = UIImage(named: "ic_home_white")?.withRenderingMode(.alwaysTemplate)
    static let phone = UIImage(named: "ic_phone_white")?.withRenderingMode(.alwaysTemplate)
    static let location = UIImage(named: "ic_place_white")?.withRenderingMode(.alwaysTemplate)
    static let visible = UIImage(named: "ic_visibility_white")?.withRenderingMode(.alwaysTemplate)
    static let work = UIImage(named: "ic_work_white")?.withRenderingMode(.alwaysTemplate)
    static let all = [back,down,audio_libary,audio,bell,notification,check,close,image,menu,menu,mic,dott_3,dott_3_up,movie,pause,edit,camera,photo_libary,play,search,settings,share,random,skip_back,skip_forward,vid_cam,volume_high,volume_med,volume_no,add_circle_outlined,add_circle,add,arrow_back,arrow_down,audiotrack,block,cam_front,cam_rear,fav_outline,email,fav,flash_auto,flash_off,flash_on,history,home,phone,location,visible,work]
    
    static func rand() -> UIImage{
        let randomIndex = Int(arc4random_uniform(UInt32(all.count)))
        let trand = all[randomIndex]
        return trand!
    }
}
