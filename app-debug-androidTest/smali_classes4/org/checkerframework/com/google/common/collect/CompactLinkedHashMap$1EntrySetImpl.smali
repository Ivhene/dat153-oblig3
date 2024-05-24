.class Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1EntrySetImpl;
.super Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/CompactHashMap<",
        "TK;TV;>.EntrySetView;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;

    .line 208
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1EntrySetImpl;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1EntrySetImpl;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1EntrySetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap;

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/CompactHashMap$EntrySetView;-><init>(Lorg/checkerframework/com/google/common/collect/CompactHashMap;)V

    return-void
.end method


# virtual methods
.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1EntrySetImpl;, "Lorg/checkerframework/com/google/common/collect/CompactLinkedHashMap$1EntrySetImpl;"
    const/16 v0, 0x11

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
