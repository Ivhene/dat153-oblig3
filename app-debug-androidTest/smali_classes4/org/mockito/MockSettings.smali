.class public interface abstract Lorg/mockito/MockSettings;
.super Ljava/lang/Object;
.source "MockSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/mockito/NotExtensible;
.end annotation


# virtual methods
.method public abstract build(Ljava/lang/Class;)Lorg/mockito/mock/MockCreationSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract buildStatic(Ljava/lang/Class;)Lorg/mockito/mock/MockCreationSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract defaultAnswer(Lorg/mockito/stubbing/Answer;)Lorg/mockito/MockSettings;
.end method

.method public varargs abstract extraInterfaces([Ljava/lang/Class;)Lorg/mockito/MockSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/MockSettings;"
        }
    .end annotation
.end method

.method public varargs abstract invocationListeners([Lorg/mockito/listeners/InvocationListener;)Lorg/mockito/MockSettings;
.end method

.method public abstract lenient()Lorg/mockito/MockSettings;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract name(Ljava/lang/String;)Lorg/mockito/MockSettings;
.end method

.method public abstract outerInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract serializable()Lorg/mockito/MockSettings;
.end method

.method public abstract serializable(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/MockSettings;
.end method

.method public abstract spiedInstance(Ljava/lang/Object;)Lorg/mockito/MockSettings;
.end method

.method public abstract stubOnly()Lorg/mockito/MockSettings;
.end method

.method public varargs abstract stubbingLookupListeners([Lorg/mockito/listeners/StubbingLookupListener;)Lorg/mockito/MockSettings;
.end method

.method public varargs abstract useConstructor([Ljava/lang/Object;)Lorg/mockito/MockSettings;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract verboseLogging()Lorg/mockito/MockSettings;
.end method

.method public varargs abstract verificationStartedListeners([Lorg/mockito/listeners/VerificationStartedListener;)Lorg/mockito/MockSettings;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract withoutAnnotations()Lorg/mockito/MockSettings;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method
