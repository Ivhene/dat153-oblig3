.class final Lorg/checkerframework/org/apache/commons/text/lookup/ScriptStringLookup;
.super Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;
.source "ScriptStringLookup.java"


# static fields
.field static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/ScriptStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/ScriptStringLookup;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/ScriptStringLookup;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/ScriptStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/ScriptStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 70
    return-object v0

    .line 72
    :cond_0
    sget-object v1, Lorg/checkerframework/org/apache/commons/text/lookup/ScriptStringLookup;->SPLIT_STR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "keys":[Ljava/lang/String;
    array-length v2, v1

    .line 74
    .local v2, "keyLen":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 78
    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 79
    .local v3, "engineName":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    .line 81
    .local v4, "script":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljavax/script/ScriptEngineManager;

    invoke-direct {v5}, Ljavax/script/ScriptEngineManager;-><init>()V

    invoke-virtual {v5, v3}, Ljavax/script/ScriptEngineManager;->getEngineByName(Ljava/lang/String;)Ljavax/script/ScriptEngine;

    move-result-object v5

    .line 82
    .local v5, "scriptEngine":Ljavax/script/ScriptEngine;
    if-eqz v5, :cond_1

    .line 85
    invoke-interface {v5, v4}, Ljavax/script/ScriptEngine;->eval(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No script engine named "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "keys":[Ljava/lang/String;
    .end local v2    # "keyLen":I
    .end local v3    # "engineName":Ljava/lang/String;
    .end local v4    # "script":Ljava/lang/String;
    .end local p1    # "key":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v5    # "scriptEngine":Ljavax/script/ScriptEngine;
    .restart local v1    # "keys":[Ljava/lang/String;
    .restart local v2    # "keyLen":I
    .restart local v3    # "engineName":Ljava/lang/String;
    .restart local v4    # "script":Ljava/lang/String;
    .restart local p1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Error in script engine [%s] evaluating script [%s]."

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "engineName":Ljava/lang/String;
    .end local v4    # "script":Ljava/lang/String;
    :cond_2
    const-string v0, "Bad script key format [%s]; expected format is DocumentPath:Key."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method
