.class Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;
.super Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RandomAccessWrappedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.Wrapped",
        "List;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .line 891
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.RandomAccessWrappedList;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p4, "ancestor":Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;

    .line 892
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedList;-><init>(Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lorg/checkerframework/com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 893
    return-void
.end method
