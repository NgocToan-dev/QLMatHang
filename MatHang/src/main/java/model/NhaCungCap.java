package model;

import jdk.nashorn.internal.objects.annotations.Constructor;
import lombok.*;

import java.io.Serializable;

@Getter
@Setter
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class NhaCungCap implements Serializable {
    private Long id;
    private String name;
    private String code;
    private String email;
    private String phone;
    private String address;
}
