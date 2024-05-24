.class public interface abstract Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;
.super Ljava/lang/Object;
.source "Change.java"


# direct methods
.method public static synthetic lambda$evaluate$0(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Z
    .locals 1
    .param p0, "_this"    # Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "p"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "node",
            "p"
        }
    .end annotation

    .line 16
    invoke-interface {p0, p2, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;->getValue(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public evaluate(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 3
    .param p1, "csmConditional"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;
    .param p2, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "csmConditional",
            "node"
        }
    .end annotation

    .line 14
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change$1;->$SwitchMap$com$github$javaparser$printer$concretesyntaxmodel$CsmConditional$Condition:[I

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getCondition()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getCondition()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :pswitch_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;->getValue(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->valueIsNullOrEmptyStringOrOptional(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 20
    :pswitch_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;->getValue(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->valueIsNullOrEmpty(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 18
    :pswitch_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;->getValue(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->valueIsNullOrEmpty(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 16
    :pswitch_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/changes/Change;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getValue(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "property",
            "node"
        }
    .end annotation
.end method
