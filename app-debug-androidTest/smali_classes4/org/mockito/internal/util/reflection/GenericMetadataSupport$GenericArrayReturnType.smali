.class Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;
.super Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.source "GenericMetadataSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenericArrayReturnType"
.end annotation


# instance fields
.field private final arity:I

.field private final genericArrayType:Lorg/mockito/internal/util/reflection/GenericMetadataSupport;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/util/reflection/GenericMetadataSupport;I)V
    .locals 0
    .param p1, "genericArrayType"    # Lorg/mockito/internal/util/reflection/GenericMetadataSupport;
    .param p2, "arity"    # I

    .line 543
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;-><init>()V

    .line 544
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;->genericArrayType:Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    .line 545
    iput p2, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;->arity:I

    .line 546
    return-void
.end method


# virtual methods
.method public rawType()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;->genericArrayType:Lorg/mockito/internal/util/reflection/GenericMetadataSupport;

    invoke-virtual {v0}, Lorg/mockito/internal/util/reflection/GenericMetadataSupport;->rawType()Ljava/lang/Class;

    move-result-object v0

    .line 551
    .local v0, "rawComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/mockito/internal/util/reflection/GenericMetadataSupport$GenericArrayReturnType;->arity:I

    if-ge v2, v3, :cond_0

    .line 553
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    .end local v2    # "i":I
    :cond_0
    :try_start_0
    const-string v2, "L"

    .line 558
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 559
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    .line 560
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 561
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 563
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 556
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 564
    :catch_0
    move-exception v2

    .line 565
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "This was not supposed to happen."

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
