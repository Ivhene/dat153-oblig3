.class Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;
.super Lorg/checkerframework/com/google/common/collect/AbstractMapEntry;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->getEntry(I)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;

    .line 209
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;

    iput p2, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;->val$index:I

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;->val$index:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 217
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;->val$index:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;, "Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap$1;->val$index:I

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;->setValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
