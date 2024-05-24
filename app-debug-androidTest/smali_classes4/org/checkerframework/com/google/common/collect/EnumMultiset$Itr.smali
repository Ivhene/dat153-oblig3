.class abstract Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;
.super Ljava/lang/Object;
.source "EnumMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/EnumMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/EnumMultiset;

.field toRemove:I


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/EnumMultiset;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/EnumMultiset;

    .line 209
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;, "Lorg/checkerframework/com/google/common/collect/EnumMultiset<TE;>.Itr<TT;>;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/EnumMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->index:I

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->toRemove:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 217
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;, "Lorg/checkerframework/com/google/common/collect/EnumMultiset<TE;>.Itr<TT;>;"
    nop

    :goto_0
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->index:I

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/EnumMultiset;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/EnumMultiset;->access$000(Lorg/checkerframework/com/google/common/collect/EnumMultiset;)[Ljava/lang/Enum;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 218
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/EnumMultiset;->access$100(Lorg/checkerframework/com/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->index:I

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 219
    const/4 v0, 0x1

    return v0

    .line 217
    :cond_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->index:I

    goto :goto_0

    .line 222
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;, "Lorg/checkerframework/com/google/common/collect/EnumMultiset<TE;>.Itr<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->index:I

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->output(I)Ljava/lang/Object;

    move-result-object v0

    .line 231
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->index:I

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->toRemove:I

    .line 232
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->index:I

    .line 233
    return-object v0

    .line 228
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method abstract output(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 6

    .line 238
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;, "Lorg/checkerframework/com/google/common/collect/EnumMultiset<TE;>.Itr<TT;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->toRemove:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 239
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/EnumMultiset;->access$100(Lorg/checkerframework/com/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aget v0, v0, v2

    if-lez v0, :cond_1

    .line 240
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/EnumMultiset;->access$210(Lorg/checkerframework/com/google/common/collect/EnumMultiset;)I

    .line 241
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/EnumMultiset;->access$300(Lorg/checkerframework/com/google/common/collect/EnumMultiset;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/EnumMultiset;

    invoke-static {v4}, Lorg/checkerframework/com/google/common/collect/EnumMultiset;->access$100(Lorg/checkerframework/com/google/common/collect/EnumMultiset;)[I

    move-result-object v4

    iget v5, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aget v4, v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/checkerframework/com/google/common/collect/EnumMultiset;->access$302(Lorg/checkerframework/com/google/common/collect/EnumMultiset;J)J

    .line 242
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->this$0:Lorg/checkerframework/com/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/EnumMultiset;->access$100(Lorg/checkerframework/com/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aput v1, v0, v2

    .line 244
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;->toRemove:I

    .line 245
    return-void
.end method
