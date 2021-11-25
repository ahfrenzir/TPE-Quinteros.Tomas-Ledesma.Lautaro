{literal}
        <ul id="comment-list" class="list-group" v-if="comments != null">
        <li v-for="comment in comments" class="list-group-item">
        <p><strong>Alguien dijo:</strong> {{comment.body}} - <span small class="text-muted"> Y puntuó con un <strong>{{comment.punctuation}}</strong>   |  {{comment.date }}</span></p> 
        
        <span v-if='admin'>
         <button type="button" class="btn btn-outline-secondary" v-on:click.prevent='deleteComment(comment.id_comment)' >Eliminar</button>  
        </span>
        </li>
        </ul>
        <div v-else>
        <p> Aún no hay comentarios sobre este personaje </p>
        </div>

{/literal}