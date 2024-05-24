.class public Lorg/mockito/internal/util/reflection/FieldReader;
.super Ljava/lang/Object;
.source "FieldReader.java"


# instance fields
.field final accessor:Lorg/mockito/plugins/MemberAccessor;

.field final field:Ljava/lang/reflect/Field;

.field final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/util/reflection/FieldReader;->accessor:Lorg/mockito/plugins/MemberAccessor;

    .line 20
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/FieldReader;->target:Ljava/lang/Object;

    .line 21
    iput-object p2, p0, Lorg/mockito/internal/util/reflection/FieldReader;->field:Ljava/lang/reflect/Field;

    .line 22
    return-void
.end method


# virtual methods
.method public isNull()Z
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/mockito/internal/util/reflection/FieldReader;->read()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read()Ljava/lang/Object;
    .locals 4

    .line 30
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/FieldReader;->accessor:Lorg/mockito/plugins/MemberAccessor;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/FieldReader;->field:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/FieldReader;->target:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/mockito/plugins/MemberAccessor;->get(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot read state from field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/util/reflection/FieldReader;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", on instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/util/reflection/FieldReader;->target:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
