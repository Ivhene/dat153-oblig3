.class public final Lorg/mockito/internal/creation/SuspendMethod;
.super Ljava/lang/Object;
.source "SuspendMethod.java"


# static fields
.field private static final KOTLIN_CONTINUATION:Ljava/lang/String; = "kotlin.coroutines.Continuation"

.field private static final KOTLIN_EXPERIMENTAL_CONTINUATION:Ljava/lang/String; = "kotlin.coroutines.experimental.Continuation"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isContinuationType(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 27
    .local p0, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "name":Ljava/lang/String;
    const-string v1, "kotlin.coroutines.Continuation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "kotlin.coroutines.experimental.Continuation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static trimSuspendParameterTypes([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 19
    .local p0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p0

    .line 20
    .local v0, "n":I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Lorg/mockito/internal/creation/SuspendMethod;->isContinuationType(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    return-object v1

    .line 23
    :cond_0
    return-object p0
.end method
