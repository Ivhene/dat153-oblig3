.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->lambda$calculateImpl$0(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-void
.end method
