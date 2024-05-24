.class Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;
.super Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;
.source "EnumMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/EnumMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/EnumMultiset<",
        "TE;>.Itr<",
        "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/EnumMultiset;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/EnumMultiset;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/EnumMultiset;

    .line 260
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;, "Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;->this$0:Lorg/checkerframework/com/google/common/collect/EnumMultiset;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/EnumMultiset$Itr;-><init>(Lorg/checkerframework/com/google/common/collect/EnumMultiset;)V

    return-void
.end method


# virtual methods
.method bridge synthetic output(I)Ljava/lang/Object;
    .locals 0

    .line 260
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;, "Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;->output(I)Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method

.method output(I)Lorg/checkerframework/com/google/common/collect/Multiset$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 263
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;, "Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/EnumMultiset$2$1;-><init>(Lorg/checkerframework/com/google/common/collect/EnumMultiset$2;I)V

    return-object v0
.end method
