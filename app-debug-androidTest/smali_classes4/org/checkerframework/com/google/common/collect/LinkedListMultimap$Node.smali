.class final Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
.super Lorg/checkerframework/com/google/common/collect/AbstractMapEntry;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMapEntry;-><init>()V

    .line 117
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    .line 118
    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 119
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 134
    .local v0, "result":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 135
    return-object v0
.end method
