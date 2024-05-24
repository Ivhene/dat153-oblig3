.class public Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;
.super Lorg/checkerframework/com/google/common/collect/AbstractMultimap;
.source "LinkedListMultimap.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/ListMultimap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,
        Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$DistinctKeyIterator;,
        Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$NodeIterator;,
        Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;,
        Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractMultimap<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient head:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keyToKeyList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private transient size:I

.field private transient tail:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 194
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;-><init>(I)V

    .line 195
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "expectedKeys"    # I

    .line 197
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;-><init>()V

    .line 198
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Platform;->newHashMapWithExpectedSize(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    .line 199
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/Multimap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;-><init>(I)V

    .line 203
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Z

    .line 204
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    .line 99
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->modCount:I

    return v0
.end method

.method static synthetic access$100(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    .line 99
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->tail:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    .line 99
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->head:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .line 99
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;
    .param p1, "x1"    # Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 99
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->removeNode(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;)V

    return-void
.end method

.method static synthetic access$500(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 99
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    .line 99
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;)Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;)Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    .line 99
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->size:I

    return v0
.end method

.method private addNode(Ljava/lang/Object;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;)Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "nextSibling":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    .local v0, "node":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->head:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    if-nez v1, :cond_0

    .line 215
    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->tail:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->head:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 216
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    new-instance v2, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;-><init>(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->modCount:I

    goto/16 :goto_3

    .line 218
    :cond_0
    if-nez p3, :cond_2

    .line 219
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->tail:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, v1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 220
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->tail:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 221
    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->tail:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 222
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;

    .line 223
    .local v1, "keyList":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    if-nez v1, :cond_1

    .line 224
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    new-instance v3, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;

    invoke-direct {v3, v0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;-><init>(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;)V

    move-object v1, v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget v2, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->modCount:I

    goto :goto_0

    .line 227
    :cond_1
    iget v2, v1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;->count:I

    .line 228
    iget-object v2, v1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;->tail:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 229
    .local v2, "keyTail":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    iput-object v0, v2, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 230
    iput-object v2, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 231
    iput-object v0, v1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;->tail:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 233
    .end local v1    # "keyList":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    .end local v2    # "keyTail":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    :goto_0
    goto :goto_3

    .line 234
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;

    .line 235
    .restart local v1    # "keyList":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    iget v2, v1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;->count:I

    .line 236
    iget-object v2, p3, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 237
    iget-object v2, p3, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 238
    iput-object p3, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 239
    iput-object p3, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 240
    iget-object v2, p3, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    if-nez v2, :cond_3

    .line 241
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;

    iput-object v0, v2, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;->head:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1

    .line 243
    :cond_3
    iget-object v2, p3, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, v2, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 245
    :goto_1
    iget-object v2, p3, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    if-nez v2, :cond_4

    .line 246
    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->head:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    goto :goto_2

    .line 248
    :cond_4
    iget-object v2, p3, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, v2, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 250
    :goto_2
    iput-object v0, p3, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 251
    iput-object v0, p3, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 253
    .end local v1    # "keyList":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    :goto_3
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->size:I

    .line 254
    return-object v0
.end method

.method private static checkElement(Ljava/lang/Object;)V
    .locals 1
    .param p0, "node"    # Ljava/lang/Object;

    .line 302
    if-eqz p0, :cond_0

    .line 305
    return-void

    .line 303
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static create()Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 167
    new-instance v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;-><init>()V

    return-object v0
.end method

.method public static create(I)Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;
    .locals 1
    .param p0, "expectedKeys"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 178
    new-instance v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;-><init>(I)V

    return-object v0
.end method

.method public static create(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 190
    .local p0, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<+TK;+TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;)V

    return-object v0
.end method

.method private getCopy(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 642
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 840
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 841
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    .line 842
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 843
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 845
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 847
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 848
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 843
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private removeAllNodes(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 297
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->clear(Ljava/util/Iterator;)V

    .line 298
    return-void
.end method

.method private removeNode(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 262
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, "node":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->head:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 267
    :goto_0
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->next:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1

    .line 270
    :cond_1
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previous:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->tail:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 272
    :goto_1
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;

    .line 274
    .local v0, "keyList":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    const/4 v1, 0x0

    iput v1, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;->count:I

    .line 275
    iget v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->modCount:I

    .line 276
    .end local v0    # "keyList":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    goto :goto_3

    .line 277
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;

    .line 278
    .restart local v0    # "keyList":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    iget v1, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;->count:I

    .line 280
    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    if-nez v1, :cond_3

    .line 281
    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;->head:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    goto :goto_2

    .line 283
    :cond_3
    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, v1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 286
    :goto_2
    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    if-nez v1, :cond_4

    .line 287
    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;->tail:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    goto :goto_3

    .line 289
    :cond_4
    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, v1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 292
    .end local v0    # "keyList":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    :goto_3
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->size:I

    .line 293
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 830
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 831
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 832
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->entries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 833
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 834
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 835
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 836
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 660
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->head:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 661
    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->tail:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 662
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 663
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->size:I

    .line 664
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->modCount:I

    .line 665
    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 580
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->keyToKeyList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 585
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->values()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createAsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 820
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$AsMap;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;)V

    return-object v0
.end method

.method bridge synthetic createEntries()Ljava/util/Collection;
    .locals 1

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->createEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method createEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 810
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1EntriesImpl;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1EntriesImpl;-><init>(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 718
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1KeySetImpl;-><init>(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)V

    return-object v0
.end method

.method createKeys()Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 723
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Multimaps$Keys;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;)V

    return-object v0
.end method

.method bridge synthetic createValues()Ljava/util/Collection;
    .locals 1

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->createValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method createValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 764
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1ValuesImpl;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1ValuesImpl;-><init>(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;)V

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->entries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 785
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 815
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 680
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$1;-><init>(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 575
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->head:Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 1

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;->keys()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 600
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;)Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$Node;

    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 0

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Z
    .locals 0

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;->putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 653
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->getCopy(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 654
    .local v0, "oldValues":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V

    .line 655
    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 617
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->getCopy(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 618
    .local v0, "oldValues":Ljava/util/List;, "Ljava/util/List<TV;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 619
    .local v1, "keyValues":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TV;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 622
    .local v2, "newValues":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 624
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 628
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 629
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 630
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 634
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 635
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 638
    :cond_2
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 570
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->size:I

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;->values()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 736
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/LinkedListMultimap;, "Lorg/checkerframework/com/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
