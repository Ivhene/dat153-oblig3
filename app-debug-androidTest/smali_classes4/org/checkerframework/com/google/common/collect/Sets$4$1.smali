.class Lorg/checkerframework/com/google/common/collect/Sets$4$1;
.super Lorg/checkerframework/com/google/common/collect/AbstractIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Sets$4;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Sets$4;

.field final synthetic val$itr1:Ljava/util/Iterator;

.field final synthetic val$itr2:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Sets$4;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Sets$4;

    .line 972
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Sets$4$1;->this$0:Lorg/checkerframework/com/google/common/collect/Sets$4;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Sets$4$1;->val$itr1:Ljava/util/Iterator;

    iput-object p3, p0, Lorg/checkerframework/com/google/common/collect/Sets$4$1;->val$itr2:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 975
    nop

    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$4$1;->val$itr1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$4$1;->val$itr1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 977
    .local v0, "elem1":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$4$1;->this$0:Lorg/checkerframework/com/google/common/collect/Sets$4;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 978
    return-object v0

    .line 980
    .end local v0    # "elem1":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 981
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$4$1;->val$itr2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 982
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$4$1;->val$itr2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 983
    .local v0, "elem2":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$4$1;->this$0:Lorg/checkerframework/com/google/common/collect/Sets$4;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 984
    return-object v0

    .line 986
    .end local v0    # "elem2":Ljava/lang/Object;, "TE;"
    :cond_2
    goto :goto_1

    .line 987
    :cond_3
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$4$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method