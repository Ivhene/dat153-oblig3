.class public Lorg/checkerframework/com/github/javaparser/utils/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;,
        Lorg/checkerframework/com/github/javaparser/utils/Log$SilentAdapter;,
        Lorg/checkerframework/com/github/javaparser/utils/Log$StandardOutStandardErrorAdapter;
    }
.end annotation


# static fields
.field private static CURRENT_ADAPTER:Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lorg/checkerframework/com/github/javaparser/utils/Log$SilentAdapter;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/utils/Log$SilentAdapter;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/utils/Log;->CURRENT_ADAPTER:Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/util/function/Supplier;)V
    .locals 3
    .param p0, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 140
    .local p1, "args":[Ljava/util/function/Supplier;, "[Ljava/util/function/Supplier<Ljava/lang/Object;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/Log;->CURRENT_ADAPTER:Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/Log$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/utils/Log$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/Log;->makeFormattingSupplier(Ljava/lang/String;[Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;->error(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    .line 141
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 124
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/Log;->CURRENT_ADAPTER:Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/Log$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/utils/Log$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;->error(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    .line 125
    return-void
.end method

.method public static varargs error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/util/function/Supplier;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "throwable",
            "format",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 132
    .local p2, "args":[Ljava/util/function/Supplier;, "[Ljava/util/function/Supplier<Ljava/lang/Object;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/Log;->CURRENT_ADAPTER:Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/Log$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/utils/Log$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/Log;->makeFormattingSupplier(Ljava/lang/String;[Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;->error(Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    .line 133
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/util/function/Supplier;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 117
    .local p1, "args":[Ljava/util/function/Supplier;, "[Ljava/util/function/Supplier<Ljava/lang/Object;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/Log;->CURRENT_ADAPTER:Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;

    invoke-static {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/Log;->makeFormattingSupplier(Ljava/lang/String;[Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;->info(Ljava/util/function/Supplier;)V

    .line 118
    return-void
.end method

.method static synthetic lambda$error$1(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 124
    return-object p0
.end method

.method static synthetic lambda$error$2(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 132
    return-object p0
.end method

.method static synthetic lambda$error$3()Ljava/lang/Throwable;
    .locals 1

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$makeFormattingSupplier$0([Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "args"    # [Ljava/util/function/Supplier;
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "args",
            "format"
        }
    .end annotation

    .line 103
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 104
    .local v0, "objects":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 105
    aget-object v2, p0, v1

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_0
    invoke-static {p1, v0}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static makeFormattingSupplier(Ljava/lang/String;[Ljava/util/function/Supplier;)Ljava/util/function/Supplier;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    .local p1, "args":[Ljava/util/function/Supplier;, "[Ljava/util/function/Supplier<Ljava/lang/Object;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/utils/Log$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lorg/checkerframework/com/github/javaparser/utils/Log$$ExternalSyntheticLambda1;-><init>([Ljava/util/function/Supplier;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setAdapter(Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;)V
    .locals 0
    .param p0, "adapter"    # Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 90
    sput-object p0, Lorg/checkerframework/com/github/javaparser/utils/Log;->CURRENT_ADAPTER:Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;

    .line 91
    return-void
.end method

.method public static varargs trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 98
    .local p1, "args":[Ljava/util/function/Supplier;, "[Ljava/util/function/Supplier<Ljava/lang/Object;>;"
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/Log;->CURRENT_ADAPTER:Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;

    invoke-static {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/Log;->makeFormattingSupplier(Ljava/lang/String;[Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/github/javaparser/utils/Log$Adapter;->trace(Ljava/util/function/Supplier;)V

    .line 99
    return-void
.end method
