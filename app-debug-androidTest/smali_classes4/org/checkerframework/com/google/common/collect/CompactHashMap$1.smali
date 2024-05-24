.class Lorg/checkerframework/com/google/common/collect/CompactHashMap$1;
.super Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/CompactHashMap;->keySetIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/CompactHashMap<",
        "TK;TV;>.Itr<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    .line 593
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$1;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$Itr;-><init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;Lorg/checkerframework/com/google/common/collect/CompactHashMap$1;)V

    return-void
.end method


# virtual methods
.method getOutput(I)Ljava/lang/Object;
    .locals 1
    .param p1, "entry"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 597
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactHashMap$1;, "Lorg/checkerframework/com/google/common/collect/CompactHashMap$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/CompactHashMap$1;->this$0:Lorg/checkerframework/com/google/common/collect/CompactHashMap;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
