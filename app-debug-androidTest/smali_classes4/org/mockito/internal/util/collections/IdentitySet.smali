.class public Lorg/mockito/internal/util/collections/IdentitySet;
.super Ljava/lang/Object;
.source "IdentitySet.java"


# instance fields
.field private final list:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/util/collections/IdentitySet;->list:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lorg/mockito/internal/util/collections/IdentitySet;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lorg/mockito/internal/util/collections/IdentitySet;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 16
    .local v1, "existing":Ljava/lang/Object;
    if-ne v1, p1, :cond_0

    .line 17
    const/4 v0, 0x1

    return v0

    .line 19
    .end local v1    # "existing":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
