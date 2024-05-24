.class Lorg/checkerframework/com/github/javaparser/ModifierHolder;
.super Ljava/lang/Object;
.source "ModifierHolder.java"


# instance fields
.field final annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation
.end field

.field final begin:Lorg/checkerframework/com/github/javaparser/JavaToken;

.field final modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 1
    .param p1, "begin"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "begin",
            "modifiers",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/JavaToken;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p2, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    .local p3, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ModifierHolder;->begin:Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 19
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ModifierHolder;->modifiers:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 20
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/ModifierHolder;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 21
    return-void
.end method
