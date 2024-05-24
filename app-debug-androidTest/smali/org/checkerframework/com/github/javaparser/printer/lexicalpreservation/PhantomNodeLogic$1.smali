.class final Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic$1;
.super Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserverAdapter;
.source "PhantomNodeLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/observer/AstObserverAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public parentChange(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
    .param p1, "observedNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "previousParent"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p3, "newParent"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "previousParent",
            "newParent"
        }
    .end annotation

    .line 46
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/PhantomNodeLogic;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method
