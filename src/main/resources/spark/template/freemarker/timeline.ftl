<#import "masterTemplate.ftl" as layout />

<@layout.masterTemplate title="Timeline">
    <h2>${pageTitle}</h2>
    <#if user??>
    	<#if profileUser?? && user.id != profileUser.id>
    		<div class="followstatus">
    		<#if followed>
    			<a class="unfollow" href="/t/${profileUser.username}/unfollow">Unfollow user</a>
    		<#else>
    			<a class="follow" href="/t/${profileUser.username}/follow">Follow user</a>.
    		</#if>
    		</div>
    	<#elseif pageTitle != 'Public Timeline'>
    		<div class="twitbox">
        		<h3>What's on your mind ${user.username}?</h3>
        		<form action="/message" method="post">
                  <fieldset class="form-group">
                    <textarea maxlength="160" class="form-control" placeholder="What's Happening?" title="text" name="text"></textarea>
                  </fieldset>
                  <fieldset class="form-group">
                    <input type="submit" class="btn btn-primary pull-right cweet-btn" value="cweet" />
                  </fieldset>
        		</form>
      		</div>
    	</#if>
    </#if>
    <ul class="messages">
    <#if messages??>
    <#list messages as message>
        <hr>
		<p>
		<strong><a href="/t/${message.username}">${message.username}</a></strong> <small>@${message.username}</small>
		<h4>${message.text}</h4>
		<small>&mdash; ${message.pubDateStr}</small>
	<#else>
		<em>There're no messages so far.</em>
	</#list>
	<#else>
		<li><em>There're no messages so far.</em>
	</#if>
	</ul>
</@layout.masterTemplate>