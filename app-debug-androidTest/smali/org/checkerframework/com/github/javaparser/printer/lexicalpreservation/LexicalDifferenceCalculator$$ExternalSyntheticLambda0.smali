.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ast/Node;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$$ExternalSyntheticLambda0;->f$1:Lorg/checkerframework/com/github/javaparser/ast/Node;

    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iput-object p4, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$$ExternalSyntheticLambda0;->f$3:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$$ExternalSyntheticLambda0;->f$1:Lorg/checkerframework/com/github/javaparser/ast/Node;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$$ExternalSyntheticLambda0;->f$3:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->lambda$calculatedSyntaxModelForNode$0$org-checkerframework-com-github-javaparser-printer-lexicalpreservation-LexicalDifferenceCalculator(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-void
.end method
