.class Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap$1;
.super Lorg/checkerframework/com/google/common/collect/Sets$ImprovedAbstractSet;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Sets$ImprovedAbstractSet<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap;

    .line 1120
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap$1;, "Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap$1;->this$0:Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1123
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap$1;, "Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap$1;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap$1$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap$1$1;-><init>(Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 1151
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap$1;, "Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap$1;->this$0:Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Multimaps$MapMultimap$1;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
