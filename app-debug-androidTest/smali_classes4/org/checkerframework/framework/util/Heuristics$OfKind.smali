.class public Lorg/checkerframework/framework/util/Heuristics$OfKind;
.super Lorg/checkerframework/framework/util/Heuristics$Matcher;
.source "Heuristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/Heuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfKind"
.end annotation


# instance fields
.field private final kind:Lcom/sun/source/tree/Tree$Kind;

.field private final matcher:Lorg/checkerframework/framework/util/Heuristics$Matcher;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/Tree$Kind;Lorg/checkerframework/framework/util/Heuristics$Matcher;)V
    .locals 0
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p2, "matcher"    # Lorg/checkerframework/framework/util/Heuristics$Matcher;

    .line 199
    invoke-direct {p0}, Lorg/checkerframework/framework/util/Heuristics$Matcher;-><init>()V

    .line 200
    iput-object p1, p0, Lorg/checkerframework/framework/util/Heuristics$OfKind;->kind:Lcom/sun/source/tree/Tree$Kind;

    .line 201
    iput-object p2, p0, Lorg/checkerframework/framework/util/Heuristics$OfKind;->matcher:Lorg/checkerframework/framework/util/Heuristics$Matcher;

    .line 202
    return-void
.end method


# virtual methods
.method public match(Lcom/sun/source/util/TreePath;)Z
    .locals 2
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 206
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/Heuristics$OfKind;->kind:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lorg/checkerframework/framework/util/Heuristics$OfKind;->matcher:Lorg/checkerframework/framework/util/Heuristics$Matcher;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/util/Heuristics$Matcher;->match(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
