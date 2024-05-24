.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda7;->f$0:Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda7;->f$1:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda7;->f$0:Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$$ExternalSyntheticLambda7;->f$1:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->lambda$null$6(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)V

    return-void
.end method
