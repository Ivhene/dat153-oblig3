.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForMismatchedType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType$Loaded;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase<",
        "TU;TV;>;"
    }
.end annotation


# instance fields
.field private final property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .param p2, "value"    # Ljava/lang/String;

    .line 2619
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType<TU;TV;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;-><init>()V

    .line 2620
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 2621
    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;->value:Ljava/lang/String;

    .line 2622
    return-void
.end method


# virtual methods
.method public filter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .param p1, "property"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .param p2, "typeDefinition"    # Lnet/bytebuddy/description/type/TypeDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "TU;TV;>;"
        }
    .end annotation

    .line 2642
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType<TU;TV;>;"
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;->value:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSort()Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;
    .locals 1

    .line 2635
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType<TU;TV;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->NONE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0
.end method

.method public getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;
    .locals 1

    .line 2628
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType<TU;TV;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->UNRESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    return-object v0
.end method

.method public load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;
    .locals 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "TV;>;"
        }
    .end annotation

    .line 2657
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType<TU;TV;>;"
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2659
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType$Loaded;

    iget-object v3, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v3, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;->value:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType$Loaded;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 2660
    :catch_0
    move-exception v1

    .line 2661
    .local v1, "exception":Ljava/lang/NoSuchMethodException;
    :try_start_2
    new-instance v2, Lnet/bytebuddy/description/annotation/AnnotationValue$ForIncompatibleType$Loaded;

    invoke-direct {v2, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForIncompatibleType$Loaded;-><init>(Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    .line 2663
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "exception":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 2664
    .local v0, "exception":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;-><init>(Ljava/lang/String;Ljava/lang/ClassNotFoundException;)V

    return-object v1
.end method

.method public resolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 2649
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType<TU;TV;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be used as value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;->property:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2672
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType<TU;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/* Warning type mismatch! \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMismatchedType;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
