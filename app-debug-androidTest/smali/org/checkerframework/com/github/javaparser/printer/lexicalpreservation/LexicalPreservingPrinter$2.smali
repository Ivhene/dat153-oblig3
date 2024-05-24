.class final Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$2;
.super Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor;
.source "LexicalPreservingPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->storeInitialText(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$tokensByNode:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$tokensByNode"
        }
    .end annotation

    .line 333
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$2;->val$tokensByNode:Ljava/util/Map;

    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/TreeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 336
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->isPhantomNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$2;->val$tokensByNode:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$300(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;)V

    .line 339
    :cond_0
    return-void
.end method
