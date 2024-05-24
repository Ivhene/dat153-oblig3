.class public final enum Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
.super Ljava/lang/Enum;
.source "CsmConditional.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Condition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

.field public static final enum FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

.field public static final enum IS_EMPTY:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

.field public static final enum IS_NOT_EMPTY:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

.field public static final enum IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 62
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    const-string v1, "IS_EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_EMPTY:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 63
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    const-string v2, "IS_NOT_EMPTY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_NOT_EMPTY:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 64
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    const-string v3, "IS_PRESENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 65
    new-instance v3, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    const-string v4, "FLAG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 61
    filled-new-array {v0, v1, v2, v3}, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->$VALUES:[Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 61
    const-class v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
    .locals 1

    .line 61
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->$VALUES:[Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    invoke-virtual {v0}, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    return-object v0
.end method


# virtual methods
.method evaluate(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Z
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "property"
        }
    .end annotation

    .line 68
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 69
    invoke-virtual {p2, p1}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->isNullOrNotPresent(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 71
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    if-ne p0, v0, :cond_1

    .line 72
    invoke-virtual {p2, p1}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->getValueAsBooleanAttribute(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 74
    :cond_1
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_EMPTY:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    const/4 v2, 0x0

    if-ne p0, v0, :cond_4

    .line 75
    invoke-virtual {p2, p1}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->getValueAsMultipleReference(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 76
    .local v0, "value":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1

    .line 78
    .end local v0    # "value":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    :cond_4
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_NOT_EMPTY:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    if-ne p0, v0, :cond_6

    .line 79
    invoke-virtual {p2, p1}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->getValueAsMultipleReference(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 80
    .restart local v0    # "value":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1

    .line 82
    .end local v0    # "value":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
