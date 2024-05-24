.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForMissingValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue$Loaded;
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
.field private final property:Ljava/lang/String;

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;)V
    .locals 0
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "property"    # Ljava/lang/String;

    .line 2741
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue<TU;TV;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;-><init>()V

    .line 2742
    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 2743
    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;->property:Ljava/lang/String;

    .line 2744
    return-void
.end method


# virtual methods
.method public filter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 0
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

    .line 2764
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue<TU;TV;>;"
    return-object p0
.end method

.method public getSort()Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;
    .locals 1

    .line 2757
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue<TU;TV;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;->NONE:Lnet/bytebuddy/description/annotation/AnnotationValue$Sort;

    return-object v0
.end method

.method public getState()Lnet/bytebuddy/description/annotation/AnnotationValue$State;
    .locals 1

    .line 2750
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue<TU;TV;>;"
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$State;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue$State;

    return-object v0
.end method

.method public load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;
    .locals 3
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

    .line 2773
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue<TU;TV;>;"
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 2774
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue$Loaded;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;->property:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue$Loaded;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForIncompatibleType$Loaded;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForIncompatibleType$Loaded;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 2777
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :catch_0
    move-exception v0

    .line 2778
    .local v0, "exception":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingType$Loaded;

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

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

    .line 2786
    .local p0, "this":Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;, "Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue<TU;TV;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not define "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForMissingValue;->property:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
