package model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@Getter
@Builder
@ToString
@AllArgsConstructor
public class NhaCungCap {
    private Long id;
    private String name;
    private String code;
    private String email;
    private String phone;
    private String address;

    public String get() {
        return code + " - " + name;
    }
}
