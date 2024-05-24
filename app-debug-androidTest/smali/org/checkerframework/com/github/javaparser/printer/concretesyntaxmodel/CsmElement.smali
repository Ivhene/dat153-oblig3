.class public interface abstract Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
.super Ljava/lang/Object;
.source "CsmElement.java"


# direct methods
.method public static attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .param p0, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmAttribute;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)V

    return-object v0
.end method

.method public static block(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 3
    .param p0, "content"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 147
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    const/16 v1, 0x62

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x63

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    return-object v0
.end method

.method public static charToken(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .param p0, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmChar;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmChar;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)V

    return-object v0
.end method

.method public static child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .param p0, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSingleReference;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)V

    return-object v0
.end method

.method public static comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 2

    .line 110
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    const/16 v1, 0x67

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(I)V

    return-object v0
.end method

.method public static comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 99
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmComment;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmComment;-><init>()V

    return-object v0
.end method

.method public static conditional(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .param p1, "condition"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
    .param p2, "thenElement"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p3, "elseElement"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "properties",
            "condition",
            "thenElement",
            "elseElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;"
        }
    .end annotation

    .line 88
    .local p0, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;-><init>(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v0
.end method

.method public static conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .param p0, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p1, "condition"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
    .param p2, "thenElement"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "condition",
            "thenElement"
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v0
.end method

.method public static conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .param p0, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p1, "condition"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
    .param p2, "thenElement"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p3, "elseElement"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "condition",
            "thenElement",
            "elseElement"
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v0
.end method

.method public static indent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 139
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmIndent;-><init>()V

    return-object v0
.end method

.method public static list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .param p0, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    .line 114
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)V

    return-object v0
.end method

.method public static list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 7
    .param p0, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p1, "separator"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "property",
            "separator"
        }
    .end annotation

    .line 118
    new-instance v6, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v6
.end method

.method public static list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 7
    .param p0, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p1, "separator"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p2, "preceeding"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p3, "following"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "separator",
            "preceeding",
            "following"
        }
    .end annotation

    .line 122
    new-instance v6, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v6
.end method

.method public static list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 7
    .param p0, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p1, "separatorPre"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p2, "separatorPost"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p3, "preceeding"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p4, "following"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "separatorPre",
            "separatorPost",
            "preceeding",
            "following"
        }
    .end annotation

    .line 126
    new-instance v6, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-object v6
.end method

.method public static newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 3

    .line 102
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->eolTokenKind()I

    move-result v1

    sget-object v2, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 106
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    return-object v0
.end method

.method public static orphanCommentsBeforeThis()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 135
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    return-object v0
.end method

.method public static orphanCommentsEnding()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 130
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmOrphanCommentsEnding;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmOrphanCommentsEnding;-><init>()V

    return-object v0
.end method

.method public static semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 2

    .line 96
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    const/16 v1, 0x66

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(I)V

    return-object v0
.end method

.method public static varargs sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 2
    .param p0, "elements"    # [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSequence;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmSequence;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 3

    .line 92
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/TokenTypes;->spaceTokenKind()I

    move-result v1

    const-string v2, " "

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static string(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .param p0, "tokenType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenType"
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(I)V

    return-object v0
.end method

.method public static string(ILjava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .param p0, "tokenType"    # I
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenType",
            "content"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static stringToken(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .param p0, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmString;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmString;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)V

    return-object v0
.end method

.method public static textBlockToken(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .param p0, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmString;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmString;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)V

    return-object v0
.end method

.method public static token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .param p0, "tokenType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenType"
        }
    .end annotation

    .line 72
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(I)V

    return-object v0
.end method

.method public static token(ILorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .param p0, "tokenType"    # I
    .param p1, "tokenContentCalculator"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenType",
            "tokenContentCalculator"
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmToken$TokenContentCalculator;)V

    return-object v0
.end method

.method public static unindent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 143
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation
.end method
