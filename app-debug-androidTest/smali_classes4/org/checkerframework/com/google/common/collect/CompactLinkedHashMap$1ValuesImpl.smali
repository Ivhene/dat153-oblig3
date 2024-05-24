.class Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1ValuesImpl;
.super Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->createValues()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1ValuesImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/CompactHashMap<",
        "TK;TV;>.ValuesView;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;

    .line 242
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1ValuesImpl;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1ValuesImpl;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1ValuesImpl;->this$0:Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$ValuesView;-><init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)V

    return-void
.end method


# virtual methods
.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1ValuesImpl;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1ValuesImpl;"
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 245
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1ValuesImpl;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1ValuesImpl;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1ValuesImpl;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1ValuesImpl;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
