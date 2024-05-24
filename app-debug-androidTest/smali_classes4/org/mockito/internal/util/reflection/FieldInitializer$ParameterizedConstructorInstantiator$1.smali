.class Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator$1;
.super Ljava/lang/Object;
.source "FieldInitializer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Constructor<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;


# direct methods
.method constructor <init>(Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;

    .line 245
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator$1;->this$0:Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private countMockableParams(Ljava/lang/reflect/Constructor;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)I"
        }
    .end annotation

    .line 260
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v0, 0x0

    .line 261
    .local v0, "constructorMockableParamsSize":I
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 262
    .local v4, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4}, Lorg/mockito/internal/util/MockUtil;->typeMockabilityOf(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;

    move-result-object v5

    invoke-interface {v5}, Lorg/mockito/plugins/MockMaker$TypeMockability;->mockable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 263
    add-int/lit8 v0, v0, 0x1

    .line 261
    .end local v4    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    :cond_1
    return v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 245
    check-cast p1, Ljava/lang/reflect/Constructor;

    check-cast p2, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator$1;->compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)I"
        }
    .end annotation

    .line 248
    .local p1, "constructorA":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p2, "constructorB":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 249
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 250
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 251
    .local v0, "argLengths":I
    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0, p1}, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator$1;->countMockableParams(Ljava/lang/reflect/Constructor;)I

    move-result v1

    .line 253
    .local v1, "constructorAMockableParamsSize":I
    invoke-direct {p0, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator$1;->countMockableParams(Ljava/lang/reflect/Constructor;)I

    move-result v2

    .line 254
    .local v2, "constructorBMockableParamsSize":I
    sub-int v3, v2, v1

    return v3

    .line 256
    .end local v1    # "constructorAMockableParamsSize":I
    .end local v2    # "constructorBMockableParamsSize":I
    :cond_0
    return v0
.end method
