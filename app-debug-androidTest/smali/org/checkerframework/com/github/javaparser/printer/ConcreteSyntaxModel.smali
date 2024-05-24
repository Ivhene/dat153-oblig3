.class public Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;
.super Ljava/lang/Object;
.source "ConcreteSyntaxModel.java"


# static fields
.field private static final concreteSyntaxModelByClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;"
        }
    .end annotation
.end field

.field private static initializationError:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->concreteSyntaxModelByClass:Ljava/util/Map;

    .line 90
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;

    const/16 v2, 0xe

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 91
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 92
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 93
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 94
    const/16 v4, 0x69

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v3, v9

    .line 95
    const/16 v8, 0x27

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v10, 0x4

    aput-object v8, v3, v10

    .line 96
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v11, 0x5

    aput-object v8, v3, v11

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 97
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v3, v12

    .line 98
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v13, 0x7

    aput-object v8, v3, v13

    .line 99
    const/16 v8, 0x62

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v3, v15

    .line 100
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    const/16 v4, 0x9

    aput-object v14, v3, v4

    .line 101
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    const/16 v2, 0xa

    aput-object v14, v3, v2

    sget-object v14, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MEMBERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 102
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {v14, v8, v4, v15, v13}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v8, 0xb

    aput-object v4, v3, v8

    .line 103
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v13, 0xc

    aput-object v4, v3, v13

    .line 104
    const/16 v4, 0x63

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    const/16 v15, 0xd

    aput-object v14, v3, v15

    .line 90
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 108
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v3, v5

    .line 109
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v3, v6

    .line 110
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v3, v7

    sget-object v14, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 111
    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v3, v9

    .line 112
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v3, v10

    sget-object v14, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 113
    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v3, v11

    .line 114
    const/16 v14, 0x60

    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v18

    aput-object v18, v3, v12

    .line 115
    const/16 v18, 0x61

    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v19

    const/16 v17, 0x7

    aput-object v19, v3, v17

    sget-object v15, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->DEFAULT_VALUE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v13, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v4, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 116
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v20

    aput-object v20, v4, v5

    const/16 v20, 0x16

    invoke-static/range {v20 .. v20}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v20

    aput-object v20, v4, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v20

    aput-object v20, v4, v7

    sget-object v20, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->DEFAULT_VALUE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static/range {v20 .. v20}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v20

    aput-object v20, v4, v9

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {v15, v13, v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v13, 0x8

    aput-object v4, v3, v13

    .line 117
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v13, 0x9

    aput-object v4, v3, v13

    .line 107
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    new-array v3, v8, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 121
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v5

    .line 122
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v6

    .line 123
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->INTERFACE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v13, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 124
    const/16 v15, 0x27

    invoke-static {v15}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    const/16 v20, 0x13

    invoke-static/range {v20 .. v20}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {v4, v13, v15, v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v9

    .line 125
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v10

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 126
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v11

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_PARAMETERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v13, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 127
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-static {v13}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    const/16 v14, 0x6b

    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    const/16 v15, 0x91

    invoke-static {v15}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {v4, v13, v14, v15}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v12

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXTENDED_TYPES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v13, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 129
    const/16 v14, 0x67

    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-static {v13}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    new-array v14, v9, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 130
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    aput-object v15, v14, v5

    const/16 v15, 0x1b

    invoke-static {v15}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    .line 131
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    .line 128
    invoke-static {v4, v13, v14, v15}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v13, 0x7

    aput-object v4, v3, v13

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->IMPLEMENTED_TYPES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v13, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 132
    const/16 v14, 0x67

    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-static {v13}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    new-array v14, v9, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 133
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    aput-object v15, v14, v5

    .line 134
    const/16 v15, 0x23

    invoke-static {v15}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    aput-object v15, v14, v6

    .line 135
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    aput-object v15, v14, v7

    .line 132
    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    .line 135
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    .line 132
    invoke-static {v4, v13, v14, v15}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v13, 0x8

    aput-object v4, v3, v13

    .line 136
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v13, 0x9

    aput-object v4, v3, v13

    new-array v4, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 137
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v4, v5

    sget-object v13, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MEMBERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v14, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    aput-object v15, v14, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {v13, v14, v15, v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v4, v6

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->block(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v2

    .line 120
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    new-array v3, v8, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 141
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v5

    .line 142
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v6

    .line 143
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v7

    .line 144
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->typeParameters()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v9

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 145
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v10

    .line 146
    const/16 v4, 0x60

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v3, v11

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->PARAMETERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v12, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 147
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {v4, v12, v13, v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v12, 0x6

    aput-object v4, v3, v12

    .line 148
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v12, 0x7

    aput-object v4, v3, v12

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->THROWN_EXCEPTIONS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v12, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 149
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    new-array v13, v9, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v13, v5

    const/16 v14, 0x39

    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v13, v7

    invoke-static {v13}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {v4, v12, v13, v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v12, 0x8

    aput-object v4, v3, v12

    .line 150
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v12, 0x9

    aput-object v4, v3, v12

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 151
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v2

    .line 140
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    new-array v3, v11, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 155
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v5

    .line 156
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 157
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ARGUMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v12, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 158
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    const/16 v13, 0x60

    invoke-static {v13}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {v4, v12, v14, v13}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v9

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CLASS_BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v12, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_NOT_EMPTY:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    const/16 v13, 0x9

    new-array v14, v13, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 159
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v14, v5

    const/16 v13, 0x62

    invoke-static {v13}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v14, v7

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v14, v9

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v14, v10

    sget-object v13, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CLASS_BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 160
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v13, v15, v8, v2, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v14, v11

    .line 161
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v14, v8

    .line 162
    const/16 v2, 0x63

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v2, 0x7

    aput-object v8, v14, v2

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v14, v8

    .line 159
    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {v4, v12, v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v10

    .line 154
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    const/16 v2, 0x10

    new-array v2, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 166
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v5

    .line 167
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v6

    .line 168
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v7

    .line 169
    const/16 v3, 0x1a

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 170
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v10

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 171
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v11

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->IMPLEMENTED_TYPES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v4, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 173
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x3

    new-array v9, v8, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 174
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v5

    const/16 v8, 0x23

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    .line 175
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    .line 172
    invoke-static {v3, v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 176
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 177
    const/16 v3, 0x62

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v3, 0x8

    aput-object v4, v2, v3

    .line 178
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    .line 179
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    .line 180
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v2, v4

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ENTRIES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v4, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 182
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    .line 183
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    .line 184
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    .line 181
    invoke-static {v3, v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v2, v4

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MEMBERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_EMPTY:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ENTRIES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v9, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_NOT_EMPTY:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 186
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {v8, v9, v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    new-array v9, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 187
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v9, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v9, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v9, v7

    sget-object v12, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MEMBERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v12, v13, v14, v15, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v9, v12

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    .line 185
    invoke-static {v3, v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v2, v4

    .line 188
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v2, v4

    .line 189
    const/16 v3, 0x63

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v3, 0xf

    aput-object v4, v2, v3

    .line 165
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    const/16 v2, 0x8

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 193
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsBeforeThis()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v5

    .line 194
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v6

    .line 195
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v7

    .line 196
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VARIABLES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_NOT_EMPTY:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MAXIMUM_COMMON_TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 197
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v2, v4, v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v10

    .line 198
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VARIABLES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v4, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 199
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v3, v4

    .line 200
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v3, v4

    .line 192
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    const/4 v2, 0x3

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 203
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->STATIC:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v8, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 204
    const/16 v9, 0x32

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v2, v4, v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v6

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 205
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v7

    .line 202
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    const/16 v2, 0xd

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 208
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsBeforeThis()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v5

    .line 209
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v6

    new-array v2, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 210
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->mix([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v7

    .line 211
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->typeParameters()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 212
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v10

    .line 213
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 214
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v3, v4

    .line 215
    const/16 v2, 0x60

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v2, 0x7

    aput-object v4, v3, v2

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->RECEIVER_PARAMETER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    const/4 v8, 0x3

    new-array v9, v8, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->RECEIVER_PARAMETER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 216
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v2, v4, v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v3, v4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->PARAMETERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v4, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 217
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v3, v4

    .line 218
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v4, 0xa

    aput-object v2, v3, v4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->THROWN_EXCEPTIONS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v4, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 219
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x3

    new-array v9, v8, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v5

    const/16 v8, 0x39

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v4, 0xb

    aput-object v2, v3, v4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v8, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 220
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v5

    sget-object v9, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v4, 0xc

    aput-object v2, v3, v4

    .line 207
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    const/4 v2, 0x7

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 224
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ANNOTATIONS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 225
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v6

    .line 226
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 227
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VAR_ARGS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v8, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    sget-object v9, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VAR_ARGS_ANNOTATIONS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 229
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {v9, v11, v12, v13}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v5

    .line 230
    const/16 v9, 0x8c

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v6

    .line 228
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v2, v4, v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v10

    .line 231
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 232
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v3, v8

    .line 223
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    new-array v2, v4, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 235
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ANNOTATIONS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 236
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v3, v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 237
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v7

    .line 238
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 239
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v10

    .line 234
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    new-array v2, v4, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 242
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 243
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->INITIALIZER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v8, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 246
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v5

    const/16 v9, 0x6a

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v7

    sget-object v9, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->INITIALIZER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 247
    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v8, v11

    .line 246
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v3, v4, v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v7

    .line 241
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;

    const/4 v2, 0x5

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 255
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 256
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v6

    .line 257
    const/16 v2, 0x64

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->INDEX:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 258
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 259
    const/16 v2, 0x65

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v10

    .line 254
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    const/4 v2, 0x6

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 263
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v5

    .line 264
    const/16 v2, 0x2a

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v6

    .line 265
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ELEMENT_TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 266
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->LEVELS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 267
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v10

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->INITIALIZER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v8, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 268
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v5

    sget-object v9, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->INITIALIZER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v2, v4, v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    .line 262
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    new-array v2, v4, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 272
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v5

    .line 273
    const/16 v3, 0x62

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VALUES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v4, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 274
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v3, v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v7

    .line 275
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 276
    const/16 v3, 0x63

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v10

    .line 271
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    const/4 v2, 0x6

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 279
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TARGET:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 280
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v6

    .line 281
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->OPERATOR:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 282
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 283
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v10

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VALUE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 284
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    .line 278
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    const/4 v2, 0x6

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 288
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->LEFT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 289
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v6

    .line 290
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->OPERATOR:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 291
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 292
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v10

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->RIGHT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 293
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    .line 287
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;

    new-array v2, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 297
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VALUE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v6

    .line 296
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    const/4 v2, 0x6

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 301
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v5

    .line 302
    const/16 v2, 0x60

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v3, v6

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 303
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v7

    .line 304
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 305
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v10

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 306
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    .line 300
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;

    new-array v2, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 310
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VALUE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 311
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->charToken(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v6

    .line 309
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;

    new-array v2, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 315
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0x68

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v7

    const/16 v4, 0x13

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v2, v8

    .line 314
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    const/16 v2, 0xa

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 318
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CONDITION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 319
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 320
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    .line 321
    const/16 v2, 0x6e

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    .line 322
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->THEN_EXPR:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 323
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    .line 324
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v4, v8

    .line 325
    const/16 v2, 0x6f

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v9, 0x7

    aput-object v8, v4, v9

    .line 326
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/16 v9, 0x8

    aput-object v8, v4, v9

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ELSE_EXPR:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 327
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/16 v9, 0x9

    aput-object v8, v4, v9

    .line 317
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;

    new-array v4, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 331
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VALUE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 332
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    .line 330
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;

    new-array v4, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 336
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    .line 337
    const/16 v8, 0x60

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v4, v6

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->INNER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 338
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v7

    .line 339
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v4, v9

    .line 335
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    new-array v4, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 343
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 344
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    .line 345
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v7

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 346
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v4, v9

    .line 342
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    const/4 v4, 0x6

    new-array v8, v4, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 350
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v5

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 351
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v6

    .line 352
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v7

    .line 353
    const/16 v4, 0x25

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v8, v9

    .line 354
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v10

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 355
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v8, v9

    .line 349
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;

    new-array v4, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 359
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VALUE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 360
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    .line 358
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    const/16 v4, 0x8

    new-array v8, v4, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 364
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v5

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ENCLOSING_PARAMETERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v9, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 365
    const/16 v11, 0x60

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {v4, v9, v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v6

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->PARAMETERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 366
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v4, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v7

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ENCLOSING_PARAMETERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v9, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 367
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v4, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v8, v9

    .line 368
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v10

    .line 369
    const/16 v4, 0x8d

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v8, v9

    .line 370
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v9, 0x6

    aput-object v4, v8, v9

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION_BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v9, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION_BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 371
    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    sget-object v12, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {v4, v9, v11, v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v9, 0x7

    aput-object v4, v8, v9

    .line 363
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;

    new-array v4, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 375
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VALUE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 376
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    .line 374
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;

    const/4 v4, 0x3

    new-array v8, v4, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v5

    const/16 v4, 0x69

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v6

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v7

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;

    const/4 v4, 0x6

    new-array v8, v4, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v5

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 382
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v6

    .line 383
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v7

    .line 384
    const/16 v4, 0x6a

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v8, v9

    .line 385
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v10

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VALUE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 386
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v8, v9

    .line 381
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    const/4 v4, 0x7

    new-array v8, v4, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 389
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v5

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v9, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v11, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    sget-object v12, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 390
    invoke-static {v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v4, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v6

    .line 391
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->typeArguments()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v7

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 392
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v8, v9

    .line 393
    const/16 v4, 0x60

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v10

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ARGUMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 394
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {v4, v9, v11, v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v8, v9

    .line 395
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v11, 0x6

    aput-object v4, v8, v11

    .line 388
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;

    new-array v4, v9, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 399
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 400
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    .line 401
    const/16 v8, 0x8e

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v7

    .line 402
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->typeArguments()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v4, v9

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->IDENTIFIER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 403
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v10

    .line 398
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->KEYWORD:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    new-array v4, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 409
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->QUALIFIER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v9, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v11, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    sget-object v12, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->QUALIFIER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 410
    invoke-static {v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v8, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->IDENTIFIER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 411
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v7

    .line 412
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v4, v9

    .line 408
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    new-array v4, v9, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 416
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 417
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    .line 418
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v7

    .line 415
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    const/4 v4, 0x6

    new-array v8, v4, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 422
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v5

    .line 423
    const/16 v4, 0x69

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v6

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 424
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v7

    .line 425
    const/16 v4, 0x60

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v4, 0x3

    aput-object v9, v8, v4

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->PAIRS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 426
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v4, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v10

    .line 427
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v8, v9

    .line 421
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;

    new-array v4, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 431
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    .line 432
    const/16 v8, 0x2b

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    .line 430
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    const/16 v4, 0xb

    new-array v8, v4, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 436
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v5

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v9, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v11, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    sget-object v12, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 437
    invoke-static {v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v4, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v6

    .line 438
    const/16 v4, 0x2a

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v7

    .line 439
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v8, v9

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_ARGUMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 440
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/16 v11, 0x6b

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/16 v12, 0x91

    invoke-static {v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {v4, v9, v11, v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v8, v10

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_ARGUMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v9, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_NOT_EMPTY:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 441
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v4, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v8, v9

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 442
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v9, 0x6

    aput-object v4, v8, v9

    .line 443
    const/16 v4, 0x60

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v4, 0x7

    aput-object v9, v8, v4

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ARGUMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 444
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {v4, v9, v11, v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v9, 0x8

    aput-object v4, v8, v9

    .line 445
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v9, 0x9

    aput-object v4, v8, v9

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ANONYMOUS_CLASS_BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v9, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    const/4 v11, 0x7

    new-array v12, v11, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 448
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v12, v5

    const/16 v11, 0x62

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v12, v7

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/4 v13, 0x3

    aput-object v11, v12, v13

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ANONYMOUS_CLASS_BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 450
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    .line 451
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    .line 452
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    .line 453
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    .line 449
    invoke-static {v11, v13, v14, v15, v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v12, v10

    .line 454
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v11, 0x5

    aput-object v2, v12, v11

    .line 455
    const/16 v2, 0x63

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/4 v2, 0x6

    aput-object v11, v12, v2

    .line 447
    invoke-static {v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    .line 446
    invoke-static {v4, v9, v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v4, 0xa

    aput-object v2, v8, v4

    .line 435
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->IDENTIFIER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;

    const/4 v2, 0x6

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 462
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    .line 463
    const/16 v2, 0x69

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 464
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    .line 465
    const/16 v2, 0x60

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v2, 0x3

    aput-object v8, v4, v2

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MEMBER_VALUE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 466
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 467
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    .line 461
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    new-array v2, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 470
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VALUE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 471
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->stringToken(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    .line 469
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;

    new-array v2, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 475
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VALUE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 476
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->textBlockToken(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    .line 474
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;

    const/4 v2, 0x3

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 480
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 481
    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 482
    const/16 v2, 0x34

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    .line 479
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;

    const/4 v2, 0x3

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 486
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 487
    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 488
    const/16 v2, 0x37

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    .line 485
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;

    new-array v2, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 492
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 493
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    .line 491
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    const/4 v2, 0x3

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->PREFIX:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    sget-object v9, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->OPERATOR:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 497
    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 498
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->POSTFIX:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    sget-object v9, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->OPERATOR:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 499
    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    .line 496
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    const/4 v2, 0x6

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 503
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ANNOTATIONS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 504
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v2, v8, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 505
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MAXIMUM_COMMON_TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 506
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    .line 507
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VARIABLES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v8, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 508
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v2, v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    .line 502
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;

    const/4 v2, 0x6

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 516
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    .line 517
    const/16 v2, 0xc

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    .line 518
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CHECK:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 519
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MESSAGE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 521
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    .line 522
    const/16 v11, 0x6f

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v9, v6

    .line 523
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v7

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MESSAGE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 524
    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v9, v12

    .line 520
    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 526
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    .line 515
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    const/4 v2, 0x7

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 530
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsBeforeThis()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    .line 531
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 532
    const/16 v2, 0x62

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v7

    .line 533
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->STATEMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 534
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    new-array v11, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v2, v8, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 535
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    .line 536
    const/16 v2, 0x63

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v2, 0x6

    aput-object v8, v4, v2

    .line 529
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;

    new-array v2, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 540
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    .line 541
    const/16 v4, 0xe

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v2, v6

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->LABEL:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 542
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->LABEL:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v7

    .line 543
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v2, v8

    .line 539
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    const/16 v2, 0x9

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 547
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    .line 548
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 549
    const/16 v2, 0x11

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    .line 550
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    .line 551
    const/16 v2, 0x60

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v10

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->PARAMETER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 552
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    .line 553
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v4, v8

    .line 554
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 555
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v4, v8

    .line 546
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;

    new-array v2, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 559
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    .line 560
    const/16 v4, 0x15

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->LABEL:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 561
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->LABEL:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v7

    .line 562
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v2, v8

    .line 558
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;

    const/16 v2, 0xb

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 566
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    .line 567
    const/16 v2, 0x17

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 568
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 569
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    .line 570
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 571
    const/16 v2, 0x3f

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    .line 572
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v4, v8

    .line 573
    const/16 v2, 0x60

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v2, 0x7

    aput-object v8, v4, v2

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CONDITION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 574
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v4, v8

    .line 575
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v8, 0x9

    aput-object v2, v4, v8

    .line 576
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v8, 0xa

    aput-object v2, v4, v8

    .line 565
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;

    new-array v2, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 580
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    .line 581
    const/16 v4, 0x66

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    .line 579
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;

    new-array v2, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 585
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    .line 586
    const/16 v4, 0x66

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    .line 584
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;

    const/4 v2, 0x6

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 590
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->THIS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 592
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->typeArguments()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    const/16 v11, 0x37

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v11, 0x3

    new-array v12, v11, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v13, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v14, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    sget-object v15, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 594
    invoke-static {v15}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    aput-object v15, v14, v5

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    aput-object v15, v14, v6

    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {v11, v13, v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v12, v5

    .line 595
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->typeArguments()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v12, v6

    .line 596
    const/16 v11, 0x34

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v12, v7

    .line 593
    invoke-static {v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    .line 591
    invoke-static {v2, v8, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 598
    const/16 v2, 0x60

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ARGUMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v8, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 599
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v2, v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    .line 600
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 601
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    .line 589
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    new-array v2, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 605
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsBeforeThis()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    .line 606
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 607
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v7

    .line 608
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v2, v8

    .line 604
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    const/16 v2, 0xc

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 612
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    .line 613
    const/16 v2, 0x20

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 614
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    .line 615
    const/16 v2, 0x60

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v2, 0x3

    aput-object v8, v4, v2

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VARIABLE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 616
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 617
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    .line 618
    const/16 v2, 0x6f

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v2, 0x6

    aput-object v8, v4, v2

    .line 619
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ITERABLE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 620
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v4, v8

    .line 621
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v8, 0x9

    aput-object v2, v4, v8

    .line 622
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v8, 0xa

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 623
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v8, 0xb

    aput-object v2, v4, v8

    .line 611
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    const/16 v2, 0xe

    new-array v2, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 627
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    .line 628
    const/16 v4, 0x20

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    .line 629
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v7

    .line 630
    const/16 v4, 0x60

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v4, 0x3

    aput-object v8, v2, v4

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->INITIALIZATION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v8, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 631
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v4, v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v10

    .line 632
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x5

    aput-object v4, v2, v8

    .line 633
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x6

    aput-object v4, v2, v8

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->COMPARE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 634
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x7

    aput-object v4, v2, v8

    .line 635
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v8, 0x8

    aput-object v4, v2, v8

    .line 636
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v8, 0x9

    aput-object v4, v2, v8

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->UPDATE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v8, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 637
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v4, v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v8, 0xa

    aput-object v4, v2, v8

    .line 638
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v8, 0xb

    aput-object v4, v2, v8

    .line 639
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v8, 0xc

    aput-object v4, v2, v8

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 640
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v8, 0xd

    aput-object v4, v2, v8

    .line 626
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    const/16 v2, 0x8

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 644
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    .line 645
    const/16 v2, 0x22

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 646
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    .line 647
    const/16 v2, 0x60

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v2, 0x3

    aput-object v8, v4, v2

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CONDITION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 648
    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v10

    .line 649
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v4, v9

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->THEN_BLOCK:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v9, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v11, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 651
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v11, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->THEN_STMT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v11, v6

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ELSE_STMT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v12, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 652
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {v2, v12, v13}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v11, v7

    .line 651
    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v11, 0x5

    new-array v12, v11, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 653
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v12, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v12, v6

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->THEN_STMT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v12, v7

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ELSE_STMT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v13, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 654
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {v11, v13, v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/4 v13, 0x3

    aput-object v11, v12, v13

    .line 655
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v12, v10

    .line 653
    invoke-static {v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    .line 650
    invoke-static {v8, v9, v2, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ELSE_STMT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 657
    const/16 v11, 0x19

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    new-array v11, v7, [Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v12, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ELSE_BLOCK:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    aput-object v12, v11, v5

    sget-object v12, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CASCADING_IF_STMT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    aput-object v12, v11, v6

    .line 658
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    sget-object v12, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v13, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 659
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v13, v5

    sget-object v14, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ELSE_STMT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    aput-object v14, v13, v6

    invoke-static {v13}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    new-array v14, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 660
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    aput-object v15, v14, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    aput-object v15, v14, v6

    sget-object v15, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ELSE_STMT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v15}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v14, v16

    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    .line 658
    invoke-static {v11, v12, v13, v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    .line 657
    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    .line 656
    invoke-static {v2, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v4, v8

    .line 643
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;

    const/4 v2, 0x5

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 664
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->LABEL:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 665
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 666
    const/16 v2, 0x6f

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v7

    .line 667
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->STATEMENT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 668
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 663
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;

    new-array v2, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 672
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CLASS_DECLARATION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 673
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    .line 671
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;

    new-array v2, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 677
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    .line 678
    const/16 v4, 0x30

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 679
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v7

    .line 680
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v2, v8

    .line 676
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;

    new-array v2, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 683
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    .line 684
    const/16 v4, 0x40

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 685
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v7

    .line 686
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v2, v8

    .line 682
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;

    const/4 v2, 0x6

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 689
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->LABELS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_NOT_EMPTY:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 691
    const/16 v11, 0x10

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->LABELS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v7

    const/16 v11, 0x6f

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v9, v13

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    new-array v12, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 692
    const/16 v13, 0x16

    invoke-static {v13}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v12, v6

    invoke-static {v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    .line 690
    invoke-static {v2, v8, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 693
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    .line 694
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->STATEMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 695
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v2, v8, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 696
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    .line 688
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;

    const/16 v2, 0xa

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 700
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    .line 701
    const/16 v2, 0x35

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 702
    const/16 v2, 0x60

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SELECTOR:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 703
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    .line 704
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 705
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    .line 706
    const/16 v2, 0x62

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v2, 0x6

    aput-object v8, v4, v2

    .line 707
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ENTRIES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 708
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v2, v8, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v4, v8

    .line 709
    const/16 v2, 0x63

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/16 v2, 0x9

    aput-object v8, v4, v2

    .line 699
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;

    const/16 v2, 0xa

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 713
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    .line 714
    const/16 v2, 0x35

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 715
    const/16 v2, 0x60

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SELECTOR:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 716
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    .line 717
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 718
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    .line 719
    const/16 v2, 0x62

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v2, 0x6

    aput-object v8, v4, v2

    .line 720
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ENTRIES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 721
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v2, v8, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v4, v8

    .line 722
    const/16 v2, 0x63

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/16 v2, 0x9

    aput-object v9, v4, v2

    .line 712
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;

    new-array v2, v8, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 726
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    .line 727
    const/16 v4, 0x36

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    .line 728
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v7

    .line 729
    const/16 v4, 0x60

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v4, 0x3

    aput-object v8, v2, v4

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 730
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v10

    .line 731
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x5

    aput-object v4, v2, v8

    .line 732
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x6

    aput-object v4, v2, v8

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 733
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x7

    aput-object v4, v2, v8

    .line 725
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;

    const/4 v2, 0x5

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 737
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    .line 738
    const/16 v2, 0x38

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 739
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 740
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    .line 741
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 736
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    const/4 v2, 0x7

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 745
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    .line 746
    const/16 v2, 0x3c

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 747
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->RESOURCES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_NOT_EMPTY:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 749
    const/16 v11, 0x60

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v9, v5

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->RESOURCES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v12, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 750
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {v11, v12, v13, v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    .line 751
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v7

    .line 752
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v9, v12

    .line 748
    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v12

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TRY_BLOCK:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 753
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CATCH_CLAUSES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 754
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->FINALLY_BLOCK:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 755
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    const/16 v11, 0x1e

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v7

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->FINALLY_BLOCK:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v9, v12

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v4, v8

    .line 744
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;

    const/16 v2, 0x8

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 759
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    .line 760
    const/16 v2, 0x3f

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 761
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    .line 762
    const/16 v2, 0x60

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CONDITION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 763
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 764
    invoke-static/range {v18 .. v18}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    .line 765
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 766
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v4, v8

    .line 758
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    new-array v2, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->COMPONENT_TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 774
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ANNOTATIONS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 775
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    .line 776
    const/16 v4, 0x64

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v7

    .line 777
    const/16 v4, 0x65

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v2, v8

    .line 773
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    const/4 v2, 0x5

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 780
    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ANNOTATIONS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 781
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v2, v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 782
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->USING_DIAMOND_OPERATOR:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 784
    const/16 v11, 0x6b

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    const/16 v11, 0x91

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_ARGUMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v12, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 785
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    const/16 v13, 0x6b

    invoke-static {v13}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    const/16 v14, 0x91

    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {v11, v12, v13, v14}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    .line 783
    invoke-static {v2, v8, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 779
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;

    const/4 v2, 0x3

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 788
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    .line 789
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    sget-object v8, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ELEMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v9, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 790
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v9, v5

    const/16 v2, 0x7c

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v9, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v9, v7

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {v8, v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    .line 787
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    const/4 v2, 0x3

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 793
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ANNOTATIONS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 794
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 795
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    .line 792
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;

    new-array v2, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 798
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    .line 799
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 800
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v7

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_BOUND:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    const/4 v8, 0x3

    new-array v9, v8, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 803
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v5

    .line 804
    const/16 v8, 0x7c

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v6

    .line 805
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v7

    .line 802
    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v9, 0x3

    new-array v11, v9, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 807
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v11, v5

    .line 808
    const/16 v9, 0x1b

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v11, v6

    .line 809
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v11, v7

    .line 806
    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    .line 810
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    .line 801
    invoke-static {v4, v8, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v2, v8

    .line 797
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    new-array v2, v8, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 814
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    .line 815
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ELEMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v9, v8, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 816
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v5

    const/16 v8, 0x7d

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v4, v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v7

    .line 813
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;

    const/4 v2, 0x3

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    const/16 v2, 0x3d

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

    const/4 v2, 0x3

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    const/16 v2, 0x5d

    const-string v8, "var"

    invoke-static {v2, v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(ILjava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    const/4 v2, 0x5

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    const/16 v2, 0x6e

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXTENDED_TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 826
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    const/16 v11, 0x1b

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v7

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXTENDED_TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v9, v12

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v12

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SUPER_TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 827
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    const/16 v11, 0x34

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v7

    sget-object v11, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SUPER_TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v9, v12

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 825
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;

    new-array v2, v10, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 834
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v5

    .line 835
    const/16 v4, 0x64

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v6

    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->DIMENSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 836
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v2, v7

    .line 837
    const/16 v4, 0x65

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v2, v8

    .line 833
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    const/4 v2, 0x6

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 841
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->PACKAGE_DECLARATION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 842
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->IMPORTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 843
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    new-array v11, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v2, v8, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 844
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {v2, v8, v9, v11, v12}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MODULE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 845
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    .line 846
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v4, v8

    .line 840
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    const/4 v2, 0x3

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 849
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->COMPILATION_UNITS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 850
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v2, v8, v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 851
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    .line 848
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;

    const/16 v2, 0x8

    new-array v4, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 854
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v5

    .line 855
    const/16 v2, 0x24

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v6

    .line 856
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->STATIC:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 857
    const/16 v11, 0x32

    invoke-static {v11}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 858
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v4, v10

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ASTERISK:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v8, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v9, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 859
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v9, v5

    const/16 v3, 0x7a

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v9, v6

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v2, v8, v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v4, v3

    .line 860
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v4, v3

    .line 861
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v4, v3

    .line 853
    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    const/16 v2, 0x9

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 865
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v5

    .line 866
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v6

    .line 867
    const/16 v2, 0x2c

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v7

    .line 868
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 869
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v10

    .line 870
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    .line 871
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v3, v4

    .line 872
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v3, v4

    .line 873
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v3, v4

    .line 864
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    const/16 v2, 0xd

    new-array v2, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 880
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->OPEN:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    sget-object v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    new-array v8, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 881
    const/16 v9, 0x44

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v3, v4, v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v6

    .line 882
    const/16 v3, 0x47

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v7

    .line 883
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 884
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v10

    .line 885
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 886
    const/16 v3, 0x62

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 887
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 888
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->DIRECTIVES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 889
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    .line 890
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    .line 891
    const/16 v3, 0x63

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v2, v4

    .line 892
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v2, v4

    .line 879
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;

    const/4 v2, 0x6

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 896
    const/16 v2, 0x48

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v5

    .line 897
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v6

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 898
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MODULE_NAMES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v4, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 900
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x3

    new-array v9, v8, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 901
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v5

    const/16 v8, 0x42

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    .line 902
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    .line 899
    invoke-static {v2, v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 903
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v10

    .line 904
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    .line 895
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;

    const/4 v2, 0x6

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 908
    const/16 v2, 0x45

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v5

    .line 909
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v6

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 910
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MODULE_NAMES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v4, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 912
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x3

    new-array v9, v8, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 913
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v5

    const/16 v8, 0x42

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    .line 914
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    .line 911
    invoke-static {v2, v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 915
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v10

    .line 916
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    .line 907
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;

    const/4 v2, 0x6

    new-array v3, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 920
    const/16 v2, 0x49

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v5

    .line 921
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v6

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 922
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v7

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->WITH:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    new-array v4, v7, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 924
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v8, 0x3

    new-array v9, v8, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 925
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v5

    const/16 v8, 0x43

    invoke-static {v8}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v6

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-static {v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    .line 926
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    .line 923
    invoke-static {v2, v4, v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 927
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    aput-object v2, v3, v10

    .line 928
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v3, v4

    .line 919
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 932
    const/16 v3, 0x41

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v5

    .line 933
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v6

    .line 934
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 935
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 936
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v10

    .line 937
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 931
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;

    new-array v2, v4, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 941
    const/16 v3, 0x46

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v5

    .line 942
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 943
    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v7

    .line 944
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 945
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    aput-object v3, v2, v10

    .line 940
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->getNodeMetaModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel$$ExternalSyntheticLambda0;-><init>()V

    .line 949
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel$$ExternalSyntheticLambda1;-><init>()V

    .line 950
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 951
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 952
    .local v0, "unsupportedNodeClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 953
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    sput-object v1, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->initializationError:Ljava/util/Optional;

    goto :goto_0

    .line 955
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should include support for these classes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sput-object v1, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->initializationError:Ljava/util/Optional;

    .line 957
    .end local v0    # "unsupportedNodeClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    return-void
.end method

.method private static annotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 4

    .line 71
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ANNOTATIONS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    return-object v0
.end method

.method public static forClass(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeClazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;"
        }
    .end annotation

    .line 974
    .local p0, "nodeClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->initializationError:Ljava/util/Optional;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 977
    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->concreteSyntaxModelByClass:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0

    .line 978
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static genericPrettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;
    .locals 2
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 968
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;-><init>()V

    .line 969
    .local v0, "sourcePrinter":Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    .line 970
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static genericPrettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V
    .locals 1
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "printer"    # Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
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

    .line 964
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    .line 965
    return-void
.end method

.method static synthetic lambda$forClass$2(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    .line 975
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$static$0(Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;)Z
    .locals 2
    .param p0, "c"    # Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "c"
        }
    .end annotation

    .line 949
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->concreteSyntaxModelByClass:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$1(Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;)Ljava/lang/String;
    .locals 1
    .param p0, "nm"    # Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "nm"
        }
    .end annotation

    .line 950
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/metamodel/BaseNodeMetaModel;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static memberAnnotations()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 4

    .line 67
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ANNOTATIONS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    return-object v0
.end method

.method private static varargs mix([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
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

    .line 63
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static modifiers()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 4

    .line 56
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MODIFIERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    return-object v0
.end method

.method private static typeArguments()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 6

    .line 80
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_ARGUMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    new-array v4, v4, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 81
    const/16 v5, 0x91

    invoke-static {v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    .line 80
    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    return-object v0
.end method

.method private static typeParameters()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 7

    .line 75
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_PARAMETERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    const/4 v1, 0x2

    new-array v2, v1, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v3, 0x6b

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    new-array v1, v1, [Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 76
    const/16 v6, 0x91

    invoke-static {v6}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-static {}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    .line 75
    invoke-static {v0, v2, v3, v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    return-object v0
.end method
