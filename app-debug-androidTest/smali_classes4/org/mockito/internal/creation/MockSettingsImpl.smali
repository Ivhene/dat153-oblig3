.class public Lorg/mockito/internal/creation/MockSettingsImpl;
.super Lorg/mockito/internal/creation/settings/CreationSettings;
.source "MockSettingsImpl.java"

# interfaces
.implements Lorg/mockito/MockSettings;
.implements Lorg/mockito/mock/MockCreationSettings;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mockito/internal/creation/settings/CreationSettings<",
        "TT;>;",
        "Lorg/mockito/MockSettings;",
        "Lorg/mockito/mock/MockCreationSettings<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3e1b73200bdd9971L


# instance fields
.field private constructorArgs:[Ljava/lang/Object;

.field private outerClassInstance:Ljava/lang/Object;

.field private useConstructor:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    invoke-direct {p0}, Lorg/mockito/internal/creation/settings/CreationSettings;-><init>()V

    return-void
.end method

.method static addListeners([Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 192
    .local p0, "listeners":[Ljava/lang/Object;, "[TT;"
    .local p1, "container":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p0, :cond_3

    .line 195
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 198
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 199
    .local v2, "listener":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    .line 202
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v2    # "listener":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .restart local v2    # "listener":Ljava/lang/Object;, "TT;"
    :cond_0
    const-string v0, "null listeners."

    invoke-static {p2, v0}, Lorg/mockito/internal/exceptions/Reporter;->methodDoesNotAcceptParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0

    .line 204
    .end local v2    # "listener":Ljava/lang/Object;, "TT;"
    :cond_1
    return-void

    .line 196
    :cond_2
    invoke-static {p2}, Lorg/mockito/internal/exceptions/Reporter;->requiresAtLeastOneListener(Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0

    .line 193
    :cond_3
    const-string v0, "null vararg array."

    invoke-static {p2, v0}, Lorg/mockito/internal/exceptions/Reporter;->methodDoesNotAcceptParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method private invocationListenersContainsType(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->invocationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/listeners/InvocationListener;

    .line 214
    .local v1, "listener":Lorg/mockito/listeners/InvocationListener;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const/4 v0, 0x1

    return v0

    .line 217
    .end local v1    # "listener":Lorg/mockito/listeners/InvocationListener;
    :cond_0
    goto :goto_0

    .line 218
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static prepareExtraInterfaces(Lorg/mockito/internal/creation/settings/CreationSettings;)Ljava/util/Set;
    .locals 2
    .param p0, "settings"    # Lorg/mockito/internal/creation/settings/CreationSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/creation/settings/CreationSettings;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/mockito/internal/creation/settings/CreationSettings;->getExtraInterfaces()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 293
    .local v0, "interfaces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Lorg/mockito/internal/creation/settings/CreationSettings;->isSerializable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    const-class v1, Ljava/io/Serializable;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_0
    return-object v0
.end method

.method private static validatedSettings(Ljava/lang/Class;Lorg/mockito/internal/creation/settings/CreationSettings;)Lorg/mockito/internal/creation/settings/CreationSettings;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/internal/creation/settings/CreationSettings<",
            "TT;>;)",
            "Lorg/mockito/internal/creation/settings/CreationSettings<",
            "TT;>;"
        }
    .end annotation

    .line 248
    .local p0, "typeToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "source":Lorg/mockito/internal/creation/settings/CreationSettings;, "Lorg/mockito/internal/creation/settings/CreationSettings<TT;>;"
    new-instance v0, Lorg/mockito/internal/util/MockCreationValidator;

    invoke-direct {v0}, Lorg/mockito/internal/util/MockCreationValidator;-><init>()V

    .line 250
    .local v0, "validator":Lorg/mockito/internal/util/MockCreationValidator;
    invoke-virtual {v0, p0}, Lorg/mockito/internal/util/MockCreationValidator;->validateType(Ljava/lang/Class;)V

    .line 251
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getExtraInterfaces()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mockito/internal/util/MockCreationValidator;->validateExtraInterfaces(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 252
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getSpiedInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mockito/internal/util/MockCreationValidator;->validateMockedType(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 257
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->isUsingConstructor()Z

    move-result v1

    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getSerializableMode()Lorg/mockito/mock/SerializableMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/util/MockCreationValidator;->validateConstructorUse(ZLorg/mockito/mock/SerializableMode;)V

    .line 262
    new-instance v1, Lorg/mockito/internal/creation/settings/CreationSettings;

    invoke-direct {v1, p1}, Lorg/mockito/internal/creation/settings/CreationSettings;-><init>(Lorg/mockito/internal/creation/settings/CreationSettings;)V

    .line 263
    .local v1, "settings":Lorg/mockito/internal/creation/settings/CreationSettings;, "Lorg/mockito/internal/creation/settings/CreationSettings<TT;>;"
    new-instance v2, Lorg/mockito/internal/util/MockNameImpl;

    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Lorg/mockito/internal/util/MockNameImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    invoke-virtual {v1, v2}, Lorg/mockito/internal/creation/settings/CreationSettings;->setMockName(Lorg/mockito/mock/MockName;)Lorg/mockito/internal/creation/settings/CreationSettings;

    .line 264
    invoke-virtual {v1, p0}, Lorg/mockito/internal/creation/settings/CreationSettings;->setTypeToMock(Ljava/lang/Class;)Lorg/mockito/internal/creation/settings/CreationSettings;

    .line 265
    invoke-static {p1}, Lorg/mockito/internal/creation/MockSettingsImpl;->prepareExtraInterfaces(Lorg/mockito/internal/creation/settings/CreationSettings;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mockito/internal/creation/settings/CreationSettings;->setExtraInterfaces(Ljava/util/Set;)Lorg/mockito/internal/creation/settings/CreationSettings;

    .line 266
    return-object v1
.end method

.method private static validatedStaticSettings(Ljava/lang/Class;Lorg/mockito/internal/creation/settings/CreationSettings;)Lorg/mockito/internal/creation/settings/CreationSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/internal/creation/settings/CreationSettings<",
            "TT;>;)",
            "Lorg/mockito/internal/creation/settings/CreationSettings<",
            "TT;>;"
        }
    .end annotation

    .line 272
    .local p0, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "source":Lorg/mockito/internal/creation/settings/CreationSettings;, "Lorg/mockito/internal/creation/settings/CreationSettings<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getExtraInterfaces()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getSpiedInstance()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lorg/mockito/internal/creation/settings/CreationSettings;

    invoke-direct {v0, p1}, Lorg/mockito/internal/creation/settings/CreationSettings;-><init>(Lorg/mockito/internal/creation/settings/CreationSettings;)V

    .line 286
    .local v0, "settings":Lorg/mockito/internal/creation/settings/CreationSettings;, "Lorg/mockito/internal/creation/settings/CreationSettings<TT;>;"
    new-instance v1, Lorg/mockito/internal/util/MockNameImpl;

    invoke-virtual {p1}, Lorg/mockito/internal/creation/settings/CreationSettings;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lorg/mockito/internal/util/MockNameImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1}, Lorg/mockito/internal/creation/settings/CreationSettings;->setMockName(Lorg/mockito/mock/MockName;)Lorg/mockito/internal/creation/settings/CreationSettings;

    .line 287
    invoke-virtual {v0, p0}, Lorg/mockito/internal/creation/settings/CreationSettings;->setTypeToMock(Ljava/lang/Class;)Lorg/mockito/internal/creation/settings/CreationSettings;

    .line 288
    return-object v0

    .line 281
    .end local v0    # "settings":Lorg/mockito/internal/creation/settings/CreationSettings;, "Lorg/mockito/internal/creation/settings/CreationSettings<TT;>;"
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot specify spied instance for static mock of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot specify additional interfaces for static mock of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_2
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create static mock of primitive type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build(Ljava/lang/Class;)Lorg/mockito/mock/MockCreationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT2;>;)",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT2;>;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    .local p1, "typeToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT2;>;"
    invoke-static {p1, p0}, Lorg/mockito/internal/creation/MockSettingsImpl;->validatedSettings(Ljava/lang/Class;Lorg/mockito/internal/creation/settings/CreationSettings;)Lorg/mockito/internal/creation/settings/CreationSettings;

    move-result-object v0

    return-object v0
.end method

.method public buildStatic(Ljava/lang/Class;)Lorg/mockito/mock/MockCreationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT2;>;)",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT2;>;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    .local p1, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT2;>;"
    invoke-static {p1, p0}, Lorg/mockito/internal/creation/MockSettingsImpl;->validatedStaticSettings(Ljava/lang/Class;Lorg/mockito/internal/creation/settings/CreationSettings;)Lorg/mockito/internal/creation/settings/CreationSettings;

    move-result-object v0

    return-object v0
.end method

.method public defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;
    .locals 1
    .param p1, "defaultAnswer"    # Lorg/mockito/stubbing/Answer;

    .line 104
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iput-object p1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->defaultAnswer:Lorg/mockito/stubbing/Answer;

    .line 105
    if-eqz p1, :cond_0

    .line 108
    return-object p0

    .line 106
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->defaultAnswerDoesNotAcceptNullParameter()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method public varargs extraInterfaces([Ljava/lang/Class;)Lorg/mockito/MockSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/MockSettings;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    .local p1, "extraInterfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_3

    array-length v0, p1

    if-eqz v0, :cond_3

    .line 64
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 65
    .local v2, "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1

    .line 67
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    .end local v2    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .restart local v2    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {v2}, Lorg/mockito/internal/exceptions/Reporter;->extraInterfacesAcceptsOnlyInterfaces(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0

    .line 66
    :cond_1
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->extraInterfacesDoesNotAcceptNullParameters()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0

    .line 71
    .end local v2    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-static {p1}, Lorg/mockito/internal/util/collections/Sets;->newSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->extraInterfaces:Ljava/util/Set;

    .line 72
    return-object p0

    .line 61
    :cond_3
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->extraInterfacesRequiresAtLeastOneInterface()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method public getConstructorArgs()[Ljava/lang/Object;
    .locals 2

    .line 157
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->outerClassInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->constructorArgs:[Ljava/lang/Object;

    return-object v0

    .line 160
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->constructorArgs:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .local v0, "resultArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->outerClassInstance:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->constructorArgs:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    iget-object v1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->constructorArgs:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultAnswer()Lorg/mockito/stubbing/Answer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->defaultAnswer:Lorg/mockito/stubbing/Answer;

    return-object v0
.end method

.method public getExtraInterfaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->extraInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method public getMockName()Lorg/mockito/mock/MockName;
    .locals 1

    .line 77
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->mockName:Lorg/mockito/mock/MockName;

    return-object v0
.end method

.method public getOuterClassInstance()Ljava/lang/Object;
    .locals 1

    .line 152
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->outerClassInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public getSpiedInstance()Ljava/lang/Object;
    .locals 1

    .line 87
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->spiedInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeToMock()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->typeToMock:Ljava/lang/Class;

    return-object v0
.end method

.method public hasInvocationListeners()Z
    .locals 1

    .line 222
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    invoke-virtual {p0}, Lorg/mockito/internal/creation/MockSettingsImpl;->getInvocationListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public varargs invocationListeners([Lorg/mockito/listeners/InvocationListener;)Lorg/mockito/MockSettings;
    .locals 2
    .param p1, "listeners"    # [Lorg/mockito/listeners/InvocationListener;

    .line 181
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->invocationListeners:Ljava/util/List;

    const-string v1, "invocationListeners"

    invoke-static {p1, v0, v1}, Lorg/mockito/internal/creation/MockSettingsImpl;->addListeners([Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    .line 182
    return-object p0
.end method

.method public isStubOnly()Z
    .locals 1

    .line 168
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iget-boolean v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->stubOnly:Z

    return v0
.end method

.method public isUsingConstructor()Z
    .locals 1

    .line 147
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iget-boolean v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->useConstructor:Z

    return v0
.end method

.method public lenient()Lorg/mockito/MockSettings;
    .locals 1

    .line 242
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->lenient:Z

    .line 243
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lorg/mockito/MockSettings;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 92
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iput-object p1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->name:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public outerInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;
    .locals 0
    .param p1, "outerClassInstance"    # Ljava/lang/Object;

    .line 135
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iput-object p1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->outerClassInstance:Ljava/lang/Object;

    .line 136
    return-object p0
.end method

.method public serializable()Lorg/mockito/MockSettings;
    .locals 1

    .line 49
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    sget-object v0, Lorg/mockito/mock/SerializableMode;->BASIC:Lorg/mockito/mock/SerializableMode;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/creation/MockSettingsImpl;->serializable(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/MockSettings;

    move-result-object v0

    return-object v0
.end method

.method public serializable(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/MockSettings;
    .locals 0
    .param p1, "mode"    # Lorg/mockito/mock/SerializableMode;

    .line 54
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iput-object p1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->serializableMode:Lorg/mockito/mock/SerializableMode;

    .line 55
    return-object p0
.end method

.method public spiedInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;
    .locals 0
    .param p1, "spiedInstance"    # Ljava/lang/Object;

    .line 98
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iput-object p1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->spiedInstance:Ljava/lang/Object;

    .line 99
    return-object p0
.end method

.method public bridge synthetic stubOnly()Lorg/mockito/MockSettings;
    .locals 1

    .line 38
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    invoke-virtual {p0}, Lorg/mockito/internal/creation/MockSettingsImpl;->stubOnly()Lorg/mockito/internal/creation/MockSettingsImpl;

    move-result-object v0

    return-object v0
.end method

.method public stubOnly()Lorg/mockito/internal/creation/MockSettingsImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/internal/creation/MockSettingsImpl<",
            "TT;>;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->stubOnly:Z

    .line 119
    return-object p0
.end method

.method public varargs stubbingLookupListeners([Lorg/mockito/listeners/StubbingLookupListener;)Lorg/mockito/MockSettings;
    .locals 2
    .param p1, "listeners"    # [Lorg/mockito/listeners/StubbingLookupListener;

    .line 187
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->stubbingLookupListeners:Ljava/util/List;

    const-string v1, "stubbingLookupListeners"

    invoke-static {p1, v0, v1}, Lorg/mockito/internal/creation/MockSettingsImpl;->addListeners([Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    .line 188
    return-object p0
.end method

.method public varargs useConstructor([Ljava/lang/Object;)Lorg/mockito/MockSettings;
    .locals 2
    .param p1, "constructorArgs"    # [Ljava/lang/Object;

    .line 124
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    const-string v0, "constructorArgs"

    const-string v1, "If you need to pass null, please cast it to the right type, e.g.: useConstructor((String) null)"

    invoke-static {p1, v0, v1}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->useConstructor:Z

    .line 129
    iput-object p1, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->constructorArgs:[Ljava/lang/Object;

    .line 130
    return-object p0
.end method

.method public verboseLogging()Lorg/mockito/MockSettings;
    .locals 3

    .line 173
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    const-class v0, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;

    invoke-direct {p0, v0}, Lorg/mockito/internal/creation/MockSettingsImpl;->invocationListenersContainsType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/mockito/listeners/InvocationListener;

    new-instance v1, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;

    invoke-direct {v1}, Lorg/mockito/internal/debugging/VerboseMockInvocationLogger;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/mockito/internal/creation/MockSettingsImpl;->invocationListeners([Lorg/mockito/listeners/InvocationListener;)Lorg/mockito/MockSettings;

    .line 176
    :cond_0
    return-object p0
.end method

.method public varargs verificationStartedListeners([Lorg/mockito/listeners/VerificationStartedListener;)Lorg/mockito/MockSettings;
    .locals 2
    .param p1, "listeners"    # [Lorg/mockito/listeners/VerificationStartedListener;

    .line 208
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->verificationStartedListeners:Ljava/util/List;

    const-string v1, "verificationStartedListeners"

    invoke-static {p1, v0, v1}, Lorg/mockito/internal/creation/MockSettingsImpl;->addListeners([Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;)V

    .line 209
    return-object p0
.end method

.method public withoutAnnotations()Lorg/mockito/MockSettings;
    .locals 1

    .line 141
    .local p0, "this":Lorg/mockito/internal/creation/MockSettingsImpl;, "Lorg/mockito/internal/creation/MockSettingsImpl<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/creation/MockSettingsImpl;->stripAnnotations:Z

    .line 142
    return-object p0
.end method
