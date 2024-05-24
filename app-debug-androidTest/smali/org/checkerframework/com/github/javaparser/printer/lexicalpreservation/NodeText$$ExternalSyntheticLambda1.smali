.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$$ExternalSyntheticLambda1;->f$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$$ExternalSyntheticLambda1;->f$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->match(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result p1

    return p1
.end method
