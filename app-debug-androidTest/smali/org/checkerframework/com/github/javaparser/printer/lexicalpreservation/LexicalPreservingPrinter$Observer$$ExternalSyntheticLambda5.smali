.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda5;->f$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda5;->f$1:Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda5;->f$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer$$ExternalSyntheticLambda5;->f$1:Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findChildTextElementForComment$4$org-checkerframework-com-github-javaparser-printer-lexicalpreservation-LexicalPreservingPrinter$Observer(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/ChildTextElement;)Z

    move-result p1

    return p1
.end method
