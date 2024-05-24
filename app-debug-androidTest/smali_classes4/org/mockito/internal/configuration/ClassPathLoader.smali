.class public Lorg/mockito/internal/configuration/ClassPathLoader;
.super Ljava/lang/Object;
.source "ClassPathLoader.java"


# static fields
.field public static final MOCKITO_CONFIGURATION_CLASS_NAME:Ljava/lang/String; = "org.mockito.configuration.MockitoConfiguration"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadConfiguration()Lorg/mockito/configuration/IMockitoConfiguration;
    .locals 5

    .line 60
    :try_start_0
    const-string v0, "org.mockito.configuration.MockitoConfiguration"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 64
    .local v0, "configClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 67
    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/configuration/IMockitoConfiguration;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/mockito/exceptions/misusing/MockitoConfigurationException;

    const-string v3, "Unable to instantiate org.mockito.configuration.MockitoConfiguration class. Does it have a safe, no-arg constructor?"

    invoke-direct {v2, v3, v1}, Lorg/mockito/exceptions/misusing/MockitoConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lorg/mockito/exceptions/misusing/MockitoConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MockitoConfiguration class must implement "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lorg/mockito/configuration/IMockitoConfiguration;

    .line 71
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " interface."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/mockito/exceptions/misusing/MockitoConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 61
    .end local v0    # "configClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method
