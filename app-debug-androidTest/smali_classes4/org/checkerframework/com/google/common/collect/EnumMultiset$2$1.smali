.class Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;
.super Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry;
.source "EnumMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;->output(I)Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;

    .line 263
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;, "Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;->this$1:Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;

    iput p2, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;->val$index:I

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 271
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;, "Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;->this$1:Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;->this$0:Lorg/checkerframework/com/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/EnumMultiset;->access$100(Lorg/checkerframework/com/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;->val$index:I

    aget v0, v0, v1

    return v0
.end method

.method public getElement()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 266
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;, "Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;->this$1:Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;->this$0:Lorg/checkerframework/com/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/EnumMultiset;->access$000(Lorg/checkerframework/com/google/common/collect/EnumMultiset;)[Ljava/lang/Enum;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;->val$index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic getElement()Ljava/lang/Object;
    .locals 1

    .line 263
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;, "Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;->getElement()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
