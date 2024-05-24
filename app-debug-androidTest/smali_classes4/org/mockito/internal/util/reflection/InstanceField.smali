.class public Lorg/mockito/internal/util/reflection/InstanceField;
.super Ljava/lang/Object;
.source "InstanceField.java"


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private fieldReader:Lorg/mockito/internal/util/reflection/FieldReader;

.field private final instance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "instance"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "field"

    invoke-static {p1, v0}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    .line 34
    const-string v0, "instance"

    invoke-static {p2, v0}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->instance:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private reader()Lorg/mockito/internal/util/reflection/FieldReader;
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->fieldReader:Lorg/mockito/internal/util/reflection/FieldReader;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lorg/mockito/internal/util/reflection/FieldReader;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/InstanceField;->instance:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/util/reflection/FieldReader;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->fieldReader:Lorg/mockito/internal/util/reflection/FieldReader;

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->fieldReader:Lorg/mockito/internal/util/reflection/FieldReader;

    return-object v0
.end method


# virtual methods
.method public annotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 97
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 132
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 133
    return v0

    .line 135
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 139
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/mockito/internal/util/reflection/InstanceField;

    .line 140
    .local v2, "that":Lorg/mockito/internal/util/reflection/InstanceField;
    iget-object v3, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    iget-object v4, v2, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/mockito/internal/util/reflection/InstanceField;->instance:Ljava/lang/Object;

    iget-object v4, v2, Lorg/mockito/internal/util/reflection/InstanceField;->instance:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 136
    .end local v2    # "that":Lorg/mockito/internal/util/reflection/InstanceField;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 145
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->hashCode()I

    move-result v0

    .line 146
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/InstanceField;->instance:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 147
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isAnnotatedBy(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 77
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isNull()Z
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/InstanceField;->reader()Lorg/mockito/internal/util/reflection/FieldReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/FieldReader;->isNull()Z

    move-result v0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    return v0
.end method

.method public jdkField()Ljava/lang/reflect/Field;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/InstanceField;->reader()Lorg/mockito/internal/util/reflection/FieldReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/FieldReader;->read()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 53
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v0

    .line 55
    .local v0, "accessor":Lorg/mockito/plugins/MemberAccessor;
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/InstanceField;->instance:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Lorg/mockito/plugins/MemberAccessor;->set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    nop

    .line 59
    return-void

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Access to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/mockito/internal/util/reflection/InstanceField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was denied"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/InstanceField;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
