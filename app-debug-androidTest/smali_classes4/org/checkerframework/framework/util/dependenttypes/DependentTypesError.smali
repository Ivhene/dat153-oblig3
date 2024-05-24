.class public Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;
.super Ljava/lang/Object;
.source "DependentTypesError.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ERROR_PATTERN:Ljava/util/regex/Pattern;

.field private static final FORMAL_PARAM_NAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final FORMAL_PARAM_NAME_STRING:Ljava/lang/String; = "Use \"#%d\" rather than \"%s\""

.field private static final FORMAT_STRING:Ljava/lang/String; = "[error for expression: %s; error: %s]"


# instance fields
.field public final error:Ljava/lang/String;

.field public final expression:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    nop

    .line 24
    nop

    .line 25
    const-string v0, "\\[error for expression: (.*); error: (.*)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->ERROR_PATTERN:Ljava/util/regex/Pattern;

    .line 40
    nop

    .line 41
    const-string v0, "^\'([a-zA-Z_$][a-zA-Z0-9_$]*)\' because (Use \"#\\d+\" rather than \"\\1\")$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->FORMAL_PARAM_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->expression:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->error:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;)V
    .locals 6
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "e"    # Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->expression:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Lorg/checkerframework/framework/util/FlowExpressionParseUtil$FlowExpressionParseException;->getResult()Lorg/checkerframework/framework/source/Result;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/framework/source/Result;->getDiagMessages()Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, "msgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/source/Result$DiagMessage;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/source/Result$DiagMessage;

    .line 67
    .local v3, "msg":Lorg/checkerframework/framework/source/Result$DiagMessage;
    invoke-virtual {v3}, Lorg/checkerframework/framework/source/Result$DiagMessage;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .end local v3    # "msg":Lorg/checkerframework/framework/source/Result$DiagMessage;
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->error:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static isExpressionError(Ljava/lang/String;)Z
    .locals 1
    .param p0, "expression"    # Ljava/lang/String;

    .line 34
    const-string v0, "[error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static unparse(Ljava/lang/String;)Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;
    .locals 4
    .param p0, "formattedError"    # Ljava/lang/String;

    .line 78
    sget-object v0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->ERROR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 79
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 81
    new-instance v1, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 83
    :cond_1
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot unparse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 90
    return v0

    .line 92
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;

    .line 98
    .local v2, "that":Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;
    iget-object v3, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->expression:Ljava/lang/String;

    iget-object v4, v2, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->expression:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->error:Ljava/lang/String;

    iget-object v4, v2, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->error:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 93
    .end local v2    # "that":Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;
    :cond_3
    :goto_1
    return v1
.end method

.method public format()Ljava/lang/String;
    .locals 2

    .line 116
    sget-object v0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->FORMAL_PARAM_NAME_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 117
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->expression:Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->error:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->expression:Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesError;->error:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[error for expression: %s; error: %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
