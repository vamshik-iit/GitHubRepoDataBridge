module default {

	type Badge {
		  required property user_id -> int32;
		  property badge_id -> int32;
		  property name -> str;
		  property award_count -> int32;
		  property rank -> str;
		  property badge_type -> str;
		  link to_user -> User;
    };
	
	type User {
		  property account_id -> int32;
		  property is_employee -> bool;
		  property last_modified_date -> datetime;
		  property last_access_date -> datetime;
		  property reputation_change_year -> int32;
		  property reputation_change_quarter -> int32;
		  property reputation_change_month -> int32;
		  property reputation_change_week -> int32;
		  property reputation_change_day -> int32;
		  property reputation -> int32;
		  property creation_date -> datetime;
		  property user_type -> str;
		  required property user_id -> int32;
		  property location -> str;
		  property website_url -> str;
		  property display_name -> str;
		  multi link has_posts := .<post_by_user[is Post];
		  multi link has_badge := .<to_user[is Badge];
		  multi link has_Tags := .<related_users[is UserRelatedTagInfo];
    };
	
	
	type Post {
	
	  property post_id -> int64;
	  property score -> int32;
	  property last_activity_date -> str;
	  property creation_date -> str;
	  property post_type -> str;
	  required property user_id ->int32;
	  link to_Question -> Question;
	  link to_Answer -> Answer;
	  link post_by_user -> User;
	  multi link has_comments -> Comments
	
	}
	
	type Question{
		property post_id -> int64;
		required property user_id ->int32;
		property body -> str;
		property title -> str;
		property question_id -> str;
        property creation_date -> str;
		property is_answered -> str;
		property score -> int32;
		multi link has_answer := .<to_Question[is Answer];
        link question_by_user -> User;
		multi link has_Tags -> QuestionsRelatedTagsInfo;
	}
	
	type QuestionsRelatedTagsInfo{
		required property question_id ->str;
		property tag -> str;
		link tagInformation -> Tags;
	}
	
	type Answer{
		required property user_id ->int32;
		property post_id -> int64;
		property answer_id -> str;
		property question_id -> str;
		property body -> str;
		property account_id -> str;
		property reputation -> str;
		property score -> int32;
		property creation_date -> str;
		link to_Question -> Question;
		link by_user -> User;
	}
	
	type Comments{
		property user_id ->int32;
		property user_type -> str;
		property score -> int32;
		property edited -> str;
		property creation_date -> str;
		property post_id -> int64;
		property comment_id -> int64;
	}
	type UserRelatedTagInfo{
		required property user_id ->int32;
		property tagName -> str;
		multi link related_users -> User;
	}
	
	type Tags{
		name -> str;
		count -> int64;
		is_require -> str;
		is_moderator_only -> str;
		multi link used_by -> UserRelatedTagInfo;
		multi link has_synonyms -> TagSynonyms;
	}
	
	type TagSynonyms{
		creation_date -> str;
		last_applied_date -> str;
		applied_count -> int32;
		to_tag -> str;
		from_tag -> str;
	}
	type MyTest{
		creation_date -> datetime;
	}
    
	type RepoData {
		  property repo_name -> str;
		  property issue_number -> int32;
		  property title -> str;
		  property created_at -> datetime;
		  property closed_at -> datetime;
		  property updated_at -> datetime;
		  property labels -> str;
		  property State -> str;
		  property locked -> str;
		  property Author -> str;
		  property state_reason -> str;
		  property score -> str;
    };

	type CommitsData {
          property repo_name -> str;
		  property commit_number -> int32;
		  property created_at -> datetime;
    };

	type PullsData {
          property repo_name -> str;
		  property pull_req_number -> int32;
		  property created_at -> datetime;
		  property closed_at -> datetime;
		  property labels -> str;
		  property State -> str;
		  property Author -> str;
    };

    
}
