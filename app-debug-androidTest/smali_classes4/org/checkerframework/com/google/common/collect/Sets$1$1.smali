.class Lorg/checkerframework/com/google/common/collect/Sets$1$1;
.super Lorg/checkerframework/com/google/common/collect/AbstractIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Sets$1;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
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
.field final itr1:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field final itr2:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Sets$1;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Sets$1;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Sets$1;

    .line 748
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Sets$1$1;->this$0:Lorg/checkerframework/com/google/common/collect/Sets$1;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractIterator;-><init>()V

    .line 749
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/Sets$1;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$1$1;->itr1:Ljava/util/Iterator;

    .line 750
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/Sets$1;->val$set2:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$1$1;->itr2:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 754
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$1$1;->itr1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$1$1;->itr1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 757
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$1$1;->itr2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Sets$1$1;->itr2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 759
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Sets$1$1;->this$0:Lorg/checkerframework/com/google/common/collect/Sets$1;

    iget-object v1, v1, Lorg/checkerframework/com/google/common/collect/Sets$1;->val$set1:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 760
    return-object v0

    .line 762
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    goto :goto_0

    .line 763
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Sets$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
