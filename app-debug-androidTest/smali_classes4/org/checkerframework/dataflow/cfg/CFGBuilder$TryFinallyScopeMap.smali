.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;
.super Ljava/util/HashMap;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TryFinallyScopeMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljavax/lang/model/element/Name;",
        "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessedNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Name;",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 723
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 724
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;->accessedNames:Ljava/util/Map;

    .line 725
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 745
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 719
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;->get(Ljava/lang/Object;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 729
    invoke-super {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    return-object v0

    .line 732
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;->accessedNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;->accessedNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    return-object v0

    .line 735
    :cond_1
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    .line 736
    .local v0, "l":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;->accessedNames:Ljava/util/Map;

    move-object v2, p1

    check-cast v2, Ljavax/lang/model/element/Name;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    return-object v0
.end method

.method public getAccessedNames()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/Name;",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;",
            ">;"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeMap;->accessedNames:Ljava/util/Map;

    return-object v0
.end method
