.class synthetic Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers$1;
.super Ljava/lang/Object;
.source "NodeWithModifiers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$github$javaparser$ast$Modifier$Keyword:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 107
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->values()[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers$1;->$SwitchMap$com$github$javaparser$ast$Modifier$Keyword:[I

    :try_start_0
    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers$1;->$SwitchMap$com$github$javaparser$ast$Modifier$Keyword:[I

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PROTECTED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithModifiers$1;->$SwitchMap$com$github$javaparser$ast$Modifier$Keyword:[I

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PRIVATE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method